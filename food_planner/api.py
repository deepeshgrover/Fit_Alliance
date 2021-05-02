import requests as re
import json
import base64
from time import sleep
import argparse

class APIRequests():
    api_url = "https://api-beta.bite.ai"
    app_key = "fa89c094d59e6e3b88c1ac55bac573d0a6948f9b"
    token_key = "5db7c71e0be48b170f94701143c9ed298642259e"
    headers = {
        'Authorization': f'Bearer {token_key}'
    }

    def jpg2base64(self, file):
        with open(file, "rb") as image_file:
            encoded_string = base64.b64encode(image_file.read())
        return encoded_string

    def item_search(self, item):
        api_item_search_url = f'/items/search?query="{item}"'
        return self.api_url + api_item_search_url

    def vision(self, img):
        api_vision = '/vision/'
        base64 = self.jpg2base64(img)
        out_file = open("file.txt", "wb")
        out_file.write(base64)
        out_file.close()
        files = {'file': (img, open(img, 'rb'))}
        endpoint = self.api_url + api_vision
        r = re.post(endpoint, files=files, headers=self.headers)
        return r.json()


class Targets:
    def __init__(self, taget, results, unit):
        self.tar_cal = target[0]
        self.tar_prot = target[1]
        self.tar_carbs = target[2]
        self.tar_fats = target[3]
        self.results = results
        self.unit = unit
        self.day_con = json.load(open('day_consumption.json', 'r'))

    def left_over_calories(self):
        self.day_con['calories'] = self.day_con['calories'] + (self.results['calories'] * self.unit)
        return self.tar_cal - self.day_con['calories']

    def left_over_nutrients(self):
        self.day_con['protein'] = self.day_con['protein'] + (self.results['protein'] * self.unit)
        left_prot = self.tar_prot - self.day_con['protein']
        self.day_con['total_fat'] = self.day_con['total_fat'] + (self.results['total_fat'] * self.unit)
        left_fat = self.tar_fats - self.day_con['total_fat']
        self.day_con['total_carb'] = self.day_con['total_carb'] + (self.results['total_carb'] * self.unit)
        left_carbs = self.tar_carbs - self.day_con['total_carb']
        nutrients = {'carbs' : left_carbs, 'fats':left_fat, "proteins":left_prot}
        return nutrients

    def day_con_update(self):
        with open("day_consumption.json", "w+") as outfile:
            json.dump(self.day_con, outfile)


if __name__ == '__main__':
    ap = argparse.ArgumentParser()
    ap.add_argument("-i", "--image", required=True,
                    help="path to image of food item")
    ap.add_argument("-u", "--units", default=1)
    args = vars(ap.parse_args())

    unit = int(args["units"])

    api = APIRequests()
    result = api.vision(args["image"])
    print("// Fetching Data from API //")
    name = result['items'][1]['item']['name']
    result = result['items'][1]['item']['nutrition_facts'][0]['nutrition']

    sleep(1)

    target = (2500, 23, 40, 15)

    print(f'Food Item : {name}')

    sleep(1)


    targets = Targets(target, result, unit)
    cal = targets.left_over_calories()
    print(f"Day's Residual Calories : {cal}")
    nut = targets.left_over_nutrients()

    sleep(1)


    print(f"For the rest of the day you can have {nut['carbs']}g of carbohydrates, {nut['proteins']}g of protein and {nut['fats']}g of fats")
    targets.day_con_update()
