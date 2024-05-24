import Foundation
import Combine

struct Plant: Identifiable{
    var id = UUID()
    let nama: String
    let gambar: String
    let latar: String
    let temperatur: String
    let penyiraman: String
    let tipe: String
    let detail: String
    var isFavorite: Bool = false
}

class PlantManager : ObservableObject{
    @Published var plants: [Plant] = [
        // adiantum
        Plant(
            nama:"Adiantum",
            gambar:"adi",
            latar: "livingroom",
            temperatur:"10°c",
            penyiraman:"2/minggu",
            tipe: "Indoor",
            detail:"""
                Adiantum termasuk dalam genus tanaman sehingga memiliki banyak spesies berbeda. Secara umum, tanaman paku ini memiliki karakteristik sendiri yang berbeda dari jenis paku-pakuan yang lain. Mulai dari daunnya, Adiantum memiliki bentuk daun yang memanjang dan cenderung bulat. Pada bagian bawah daun, terdapat sorus atau kluster-kluster yang berisi kelompok spora. Spora tersebut dilindungi oleh indusium dengan tangkai berwarna hitam mengkilap. Sistem pertulangan daun suplir ini sangat unik dan terlihat seperti sporofil atau menyirip.
            
        """
        ),
        // kaktus
        Plant(
            nama:"Kaktus",
            gambar:"kak",
            latar: "park",
            temperatur:"26°c",
            penyiraman:"3/sehari",
            tipe: "Outdoor",
            detail:"""
        Kaktus dapat tumbuh pada waktu yang lama tanpa air.Kaktus biasa ditemukan di daerah-daerah yang kering (gurun). Kata jamak untuk kaktus adalah kakti. Kaktus memiliki akar yang panjang untuk mencari air dan memperlebar penyerapan air dalam tanah. Air yang diserap kaktus disimpan dalam ruang di batangnya. Kaktus juga memiliki daun yang berubah bentuk menjadi duri sehingga dapat mengurangi penguapan air lewat daun. Oleh sebab itu, kaktus dapat tumbuh pada waktu yang lama tanpa air.
        """
        ),
        // pachira
        Plant(
            nama:"Pachira",
            gambar:"pac",
            latar: "park",
            temperatur:"24°c",
            penyiraman:"1/minggu",
            tipe: "Outdoor",
            detail:"""
            Pachira adalah genus pohon tropis yang tersebar di Amerika Tengah dan Selatan, Afrika, dan India. Mereka diklasifikasikan dalam subfamili Bombacoideae (sebelumnya bombacaceae) dari keluarga Malvaceae.[1][2] Sebelumnya genus ini ditempatkan di Sterculiaceae (yang sekarang sudah usang). Sekitar 77 spesiesnya telah diidentifikasi.[3][4][5] Anggotanya berupa pohon kecil atau besar dengan daun digitat, dan buahnya berupa kapsul bersel satu berkayu lonjong yang terbuka dengan beberapa pembelahan dan mengandung banyak biji. Namanya berasal dari bahasa yang digunakan di Guyana. Kayu balok, tali pengikat, dan biji-bijiannya digunakan untuk isian bantal dan bantalan kursi.
        """
        ),
        // cendrawasih
        Plant(
            nama:"Cendrawasih",
            gambar:"cen",
            latar: "park",
            temperatur:"21°c",
            penyiraman:"2/minggu",
            tipe: "Outdoor",
            detail:"""
            Bunga Cendrawasih adalah jenis bunga yang tidak memerlukan sinar matahari yang terlalu banyak, karena bunga ini bisa ditanam atau disimpan pada lokasi yang teduh asalkan hangat. Jadi bunga ini tidak perlu terlalu sering untuk dijemur. Supaya bunga ini bisa tumbuh dengan sangat bagus tentu anda bisa menanamnya di tanah yang subur, punya drainase yang lancar dan memiliki tekstur yang cocok seperti tanah liat. Meskipun anda tinggal di dekat pantai, maka bunga ini bisa tumbuh dengan baik.
            Untuk melakukan perawatan pada tanaman Cendrawasih, maka anda bisa memulainya dengan melakukan penyiraman secara rutin dan anda bisa menyiramnya 2 minggu sekali. Jika masih dalam musim penghujan atau musim dingin, maka anda bisa mengurangi intensitas penyiraman.
        """
        ),
        // kimunding
        Plant(
            nama:"Ficus lyrata",
            gambar:"kim",
            latar: "livingroom",
            temperatur:"18°c",
            penyiraman:"2/minggu",
            tipe: "Indoor",
            detail:"""
            Ficus lyrata, umumnya dikenal sebagai kimunding atau ara daun, adalah spesies tumbuhan berbunga dalam keluarga murbei atau Moraceae. Spesies ini berasal dari Afrika barat, dari Kamerun barat hingga Sierra Leone. Spesies ini tumbuh di hutan hujan tropis dataran rendah serta bisa tumbuh hingga 12-15 m.
        
            Bentuk daunnya bervariasi, tetapi seringkali dengan puncak lebar dan tengah sempit, menyerupai kecapi atau biola dengan panjang mencapai 45 cm dan lebar 30 cm (walaupun biasanya lebih kecil) dengan tekstur kasar, urat menonjol dan margin bergelombang.
        """
        ),
        // sukulen
        Plant(
            nama:"Sukulen",
            gambar:"suk",
            latar: "park",
            temperatur:"26°c",
            penyiraman:"2/minggu",
            tipe: "Outdoor",
            detail:"""
            Tumbuhan sukulen, juga dikenal sebagai sukulen, adalah tumbuhan dengan organ yang menebal, berdaging, dan membengkak, biasanya untuk menyimpan air di iklim atau kondisi tanah kering. Karakter ini tidak digunakan secara ilmiah untuk mendefinisikan famili dan genus tumbuhan karena sering kali hanya akurat pada tingkat spesies tunggal. Kata sukulen berasal dari kata Latin sucus, yang berarti 'jus', atau 'getah'.[1] Tanaman sukulen dapat menyimpan air dalam berbagai struktur organ, seperti daun dan batang . Beberapa tanaman dapat menyimpan air di akar sehingga tanaman geofit yang bertahan hidup pada periode yang tidak menguntungkan dengan mempertahankan organ penyimpanan bawah tanah dapat dianggap sebagai sukulen. Dalam hortikultura, istilah sukulen kadang-kadang mengecualikan tanaman yang dianggap oleh ahli botani sebagai sukulen, seperti kaktus . Tanaman sukulen sering ditanam sebagai tanaman hias karena penampilannya yang mencolok dan tidak biasa, serta kemampuannya untuk tumbuh subur dengan perawatan yang relatif minim.
        
            Banyak famili tumbuhan memiliki banyak spesies sukulen (lebih dari 25 famili).[2] Famili seperti Aizoaceae, Cactaceae, dan Crassulaceae, sebagian besar spesiesnya adalah sukulen. Habitat tanaman penyimpan air ini sering berada di daerah dengan suhu tinggi dan curah hujan rendah, seperti gurun . Tanaman sukulen memiliki kemampuan untuk tumbuh subur pada sumber air yang terbatas, seperti kabut dan embun, sehingga dapat bertahan hidup dalam ekosistem dengan memiliki sumber air terbatas.
        """
        ),
        // Lidah mertua
        Plant(
            nama:"Lidah Mertua",
            gambar:"lid",
            latar: "park",
            temperatur:"31°c",
            penyiraman:"1/hari",
            tipe: "Outdoor",
            detail:"""
            Lidah mertua memiliki daun keras, sukulen, tegak, dengan ujung meruncing. Tumbuhan ini berdaun tebal dan memiliki kandungan air sukulen, sehingga tahan kekeringan. Namun dalam kondisi lembap atau basah, sansiviera bisa tumbuh subur. Warna daun Sansevieria beragam, mulai hijau tua, hijau muda, hijau abu-abu, perak, dan warna kombinasi putih kuning atau hijau kuning. Motif alur atau garis-garis yang terdapat pada helai daun juga bervariasi, ada yang mengikuti arah serat daun, tidak beraturan, dan ada juga yang zig-zag.
        """
        ),
        // bromeliad
        Plant(
            nama:"Bromeliad",
            gambar:"bro",
            latar: "livingroom",
            temperatur:"31°c",
            penyiraman:"1/hari",
            tipe: "Indoor",
            detail:"""
            Bromelia adalah kelompok tanaman yang bernaung di bawah keluarga Bromeliaceae yang terdiri atas sekitar 3000 spesies dan ratusan hingga ribuan hibrida. Asal muasal tanaman yang salah satunya adalah nanas yang berasal dari Amerika. Tercatat hanya satu yang habitat nya di Afrika, yaitu Pitcairnia feliciana.
        """
        ),
        // monstera
        Plant(
            nama:"Monstera",
            gambar:"mon",
            latar: "livingroom",
            temperatur:"29°c",
            penyiraman:"1/minggu",
            tipe: "Indoor",
            detail:"""
            Monstera alias janda bolong merupakan jenis tanaman hias tropis yang sering digunakan sebagai hiasan interior rumah bergaya Skandinavia atau minimalis.
        """
        ),
        // lily
        Plant(
            nama:"Lily peace",
            gambar:"lil",
            latar: "park",
            temperatur:"29°c",
            penyiraman:"1/minggu",
            tipe: "Outdoor",
            detail:"""
            Spathiphyllum is a genus of about 47 species of monocotyledonous flowering plants in the family Araceae, native to tropical regions of the Americas and southeastern Asia. Certain species of Spathiphyllum are commonly known as spath or peace lilies.
        
            They are evergreen herbaceous perennial plants with large leaves 12–65 cm long and 3–25 cm broad. The flowers are produced in a spadix, surrounded by a 10–30 cm long, white, yellowish, or greenish spathe. The plant does not need large amounts of light or water to survive. They are most often grown as houseplants, however they are able to withstand the elements well enough to thrive when planted outdoors in situations that are hot and humid.[2]
        """
        ),
        // Kelapa
        Plant(
            nama:"Pohon Kelapa",
            gambar:"kel",
            latar: "beach",
            temperatur:"29°c",
            penyiraman:"1/minggu",
            tipe: "Garden",
            detail:"""
            Spathiphyllum is a genus of about 47 species of monocotyledonous flowering plants in the family Araceae, native to tropical regions of the Americas and southeastern Asia. Certain species of Spathiphyllum are commonly known as spath or peace lilies.
        
            They are evergreen herbaceous perennial plants with large leaves 12–65 cm long and 3–25 cm broad. The flowers are produced in a spadix, surrounded by a 10–30 cm long, white, yellowish, or greenish spathe. The plant does not need large amounts of light or water to survive. They are most often grown as houseplants, however they are able to withstand the elements well enough to thrive when planted outdoors in situations that are hot and humid.[2]
        """
        ),
        // Mangga
        Plant(
            nama:"Pohon Mangga",
            gambar:"man",
            latar: "field",
            temperatur:"29°c",
            penyiraman:"1/minggu",
            tipe: "Garden",
            detail:"""
            Spathiphyllum is a genus of about 47 species of monocotyledonous flowering plants in the family Araceae, native to tropical regions of the Americas and southeastern Asia. Certain species of Spathiphyllum are commonly known as spath or peace lilies.
        
            They are evergreen herbaceous perennial plants with large leaves 12–65 cm long and 3–25 cm broad. The flowers are produced in a spadix, surrounded by a 10–30 cm long, white, yellowish, or greenish spathe. The plant does not need large amounts of light or water to survive. They are most often grown as houseplants, however they are able to withstand the elements well enough to thrive when planted outdoors in situations that are hot and humid.[2]
        """
        ),
    ]
    
    
    @Published var selectedTipe: String? = nil
    
    func filterPlants(by tipe: String?) {
        selectedTipe = tipe
    }
    
    
    
}
