//
//  CatalogViewController.swift
//  online-shop
//
//  Created by Ostrenkiy on 01/07/2019.
//  Copyright © 2019 Ostrenkiy. All rights reserved.
//

import UIKit

struct ShoppingItem {
    var image: UIImage
    var title: String
    var price: Int
    var description: String
}

class CatalogViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var items: [ShoppingItem] = [
        ShoppingItem(
            image: #imageLiteral(resourceName: "item_1"),
            title: "Утюг Bosch TDA3024050",
            price: 1999,
            description: "Сигнализатор рабочего состояния. Тип управления- терморегулятор. Защита от высоких температур . Объем резервуара -0,3 л. Капля стоп в наличии. Функция спрей. Функция самоочистки - специальная игла"
        ),
        ShoppingItem(
            image: #imageLiteral(resourceName: "item_2"),
            title: "Звуковая зубная щетка Philips Sonicare EasyClean HX6512/59",
            price: 2990,
            description: "Более эффективное удаление налёта. Технология чистки Philips Sonicare благодаря динамическому потоку жидкости позволяет мягко и эффективно очищать межзубные промежутки и область вдоль дёсен. Обеспечивает тщательное очищение - удаляет до 7 раз больше налёта по сравнению с обычной зубной щёткой. Динамический поток, создаваемый Sonicare, очищает межзубные промежутки. Фиксируемая под углом к рукоятке чистящая насадка для более качественной чистки задних зубов."
        ),
        ShoppingItem(
            image: #imageLiteral(resourceName: "item_3"),
            title: "Моторное масло Shell Helix Ultra, синтетическое, 5W-40, 4 л",
            price: 1990,
            description: "Полностью синтетическое моторное масло для самых современных двигателей, созданное на основе уникальной технологии Shell PurePlus. Обеспечивает исключительную защиту и очищение даже при самых долгих рекомендованных автопроизводителями интервалах замены масла. Позволяет сохранить чистоту поршня на уровне заводского конвейера."
        ),
        ShoppingItem(
            image: #imageLiteral(resourceName: "item_4"),
            title: "Pampers Pants Трусики 12-17 кг (размер 5) 96 шт",
            price: 1449,
            description: "Для сухой ночи и спокойного сна малыша созданы трусики Pampers Pants. Благодаря микрогранулам, они надежно удерживают влагу и гарантируют до 12 часов сухости. А для легкой смены подгузника просто разорвите боковинки и выбросьте, используя ленту-утилизатор. Спокойной ночи с новыми трусиками Pampers!"
        ),
        ShoppingItem(
            image: #imageLiteral(resourceName: "item_5"),
            title: "Сковорода Tefal Original Cook, черный, диаметр 28 см",
            price: 1274,
            description: "Пусть каждое ваше блюдо будет невероятно вкусным, а любое приготовление приносит только удовольствие с высококачественной алюминиевой посудой Tefal Original Cook.  Благодаря фирменному покрытию Intensy, стилизованному под натуральный камень как на внешней, так и на внутренней поверхности, еда не будет пригорать даже при интенсивном ежедневном использовании, а саму посуду очень легко мыть.  Запатентованный индикатор нагрева Thermo-Spot® подскажет идеальную температуру для начала приготовления, благодаря чему каждое блюдо получится равномерно прожаренным и потрясающе вкусным.  Уникальное дно Diffusal Technology выполнено по особой технологии для оптимального и равномерного распределения тепла по всей посуде."
        ),
        ShoppingItem(
            image: #imageLiteral(resourceName: "item_6"),
            title: "Беспроводная колонка Marshall Stockwell, Black",
            price: 10990,
            description: "The Stockwell - это самая компактная колонка в линейке акустики Marshall, как будто специально созданная для путешествий. Миниатюрная, весом всего 1,2 килограмма, она порадует вас своим звучанием: два усилителя D- класса подают идеально чистый звук на два стереодинамика диаметром 2,25\". А громкость, басы и высокие частоты легко регулируются с помощью аналоговых переключателей, расположенных на верхней панели колонки."
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ItemCollectionViewCell")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CatalogViewController: UICollectionViewDelegate {

}

extension CatalogViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 280)
    }
}

extension CatalogViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCollectionViewCell", for: indexPath) as? ItemCollectionViewCell else {
            fatalError("Wrong cell class")
        }
        
        cell.initWith(item: items[indexPath.item])
        return cell
    }
}
