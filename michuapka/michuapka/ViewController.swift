//
//  ViewController.swift
//  michuapka
//
//  Created by Szymon on 10.01.2018.
//  Copyright © 2018 Szymon. All rights reserved.
//

import UIKit

struct Questions{ //structure of question which has Question text, posibble answers in buttons and number of correct answer as int which is number of button 0-3
    var Question : String!
    var Answers : [String]!
    var Correct : Int!
    var ID : Int!
}

class ViewController: UIViewController {

    @IBOutlet var Buttons: [UIButton]! //array of buttons
    @IBOutlet weak var questionLabel: UILabel!
    
    var FQuestions = [Questions]()
    var FQuestionNumber = Int()
    var FAnswerNumber = Int()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        FQuestions = [//HERE WRITE QUESTIONS WITH ANSWERS AND NUMBER OF CORRECT ONE
            
            Questions(Question:"Który protokół jest stosowany do pobierania wiadomości e-mail z serwera poczty na komputer użytkownika",
                      Answers:["FTP" , "POP3",  "SMTP" , "HTTP" ],
                      Correct: 1,
                      ID: 478 ),
            
            Questions(Question:"Połączenia typu punkt-punkt, poprzez publiczną infrastrukturę telekomunikacyjną, oznacza się skrótem",
                      Answers:["VPN" , "PAN",  "VLAN" , "WLAN" ],
                      Correct: 0,
                      ID: 216),
            
            Questions(Question:"Który z protokołów jest używany do wymiany informacji o trasach oraz dostępności sieci pomiędzy ruterami należącymi do tego samego systemu autonomicznego?",
                      Answers:["RIP" , "TCP",  "HTTP" , "RARP" ],
                      Correct:0 ,
                      ID: 453 ),
            
            Questions(Question:"W adresowaniu klasowym adres IP 74.100.7.8 należy do",
                      Answers:["klasy A" , "klasy D",  "klasy B" , "klasy C" ],
                      Correct:0 ,
                      ID:138 ),
            
            Questions(Question:"Która usługa musi być uruchomiona w sieci, aby można było na stacji roboczej automatycznie uzyskać adres IP?",
                      Answers:["DNS" , "WINS",  "DHCP" , "PROXY" ],
                      Correct:2 ,
                      ID:604 ),
            
            Questions(Question:"Polecenie dsadd umożliwia",
                      Answers:["przenoszenie obiektów w obrębie jednej domeny" , "usuwanie użytkowników, grup, komputerów, kontaktów i jednostek organizacyjnych do usługi Active Directory",  "dodawanie użytkowników, grup, komputerów, kontaktów i jednostek organizacyjnych do usługi Active Directory" , "zmianę właściwości obiektów w katalogu" ],
                      Correct: 2,
                      ID: 92),
            
            Questions(Question:"Wskaż zakres adresów IP należący do klasy A, służący do adresacji prywatnej w sieciach komputerowych:",
                      Answers:["10.0.0.0 - 10.255.255.255" , "127.0.0.0 - 127.255.255.255",  "172.16.0.0 - 172.31.255.255" , "192.168.0.0 - 192.168.255.255" ],
                      Correct:0 ,
                      ID:296 ),
            
            Questions(Question:"W sieci strukturalnej zalecane jest umieszczenie jednego punktu abonenckiego na powierzchni o wielkości",
                      Answers:["5m^2" , "10m^2",  "20m^2" , "30m^2" ],
                      Correct: 1,
                      ID: 163),
            
            Questions(Question:"Grupa, w której uprawnienia członków można przypisywać tylko w obrębie tej samej domeny, co domena nadrzędnej grupy lokalnej domeny, to grupa",
                      Answers:["lokalna domeny" , "uniwersalna",  "lokalna komputera" , "globalna" ],
                      Correct:0 ,
                      ID: 74),
            
            Questions(Question:"Kabel typu skrętka, posiadający każdą parę przewodów w osobnym ekranie z folii, przy czym wszystkie przewody znajdują się w ekranie z folii, jest oznaczony symbolem",
                      Answers:["S/UTP" , "F/UTP",  "S/FTP" , "F/FTP" ],
                      Correct:3 ,
                      ID: 495),
            
            Questions(Question:"Aby umożliwić wymianę danych pomiędzy siecią w pracowni, a siecią ogólnoszkolną o innej adresacji IP, należy wykorzystać",
                      Answers:["ruter" , "przełącznik",  "koncentrator" , "punkt dostępowy" ],
                      Correct: 0,
                      ID: 498),
            
            Questions(Question:"Kod kontroli cyklicznej odpowiadający za korekcję błędów i weryfikację poprawności danych otrzymywanych przez stację docelową nosi nazwę:",
                      Answers:["CAT" , "CNC",  "IRC" , "CRC" ],
                      Correct: 3,
                      ID: 196),
            
            Questions(Question:"Norma dotycząca okablowania strukturalnego to",
                      Answers:["ISO 9001" , "IEEE 1394",  "IEC 60364" , "TIA/EIA-568-B" ],
                      Correct:3 ,
                      ID: 322),
            
            Questions(Question:"Pierwszą usługą instalowaną na serwerze jest usługa domenowa w usłudze Active Directory. Podczas instalacji kreator automatycznie wyświetli monit o konieczności zainstalowania usługi serwera",
                      Answers:["FTP" , "DNS",  "WEB" , "DHCP" ],
                      Correct:1 ,
                      ID:431 ),
            
            Questions(Question:"Protokół pocztowy, za pomocą którego możemy odbierać pocztę z serwera, to",
                      Answers:["FTP" , "POP3",  "SMTP" , "HTTP" ],
                      Correct:1 ,
                      ID: 184 ),
            
            Questions(Question:"Które urządzenie sieciowe działa w warstwie fizycznej modelu ISO/OSI, przesyłając sygnał z jednego portu na wszystkie pozostałe porty?",
                      Answers:["Modem" , "Przełącznik",  "Koncentrator" , "Karta sieciowa" ],
                      Correct:2 ,
                      ID: 290),
            
            Questions(Question:"Które urządzenie umożliwia podłączenie kabla światłowodowego użytego w okablowaniu pionowym sieci z przełącznikiem posiadającym wyłącznie gniazda RJ45?",
                      Answers:["Ruter" , "Modem",  "Regenerator" , "Konwerter mediów" ],
                      Correct: 3,
                      ID: 579),
            
            Questions(Question:"Polecenie netstat -a w systemach Microsoft Windows wyświetla",
                      Answers:["Tablicę trasowania" , "Statystykę odwiedzin stron internetowych",  "Wszystkie aktywne połączenia protokołu TCP" , "Aktualne parametry konfiguracyjne sieci TCP/IP" ],
                      Correct:2 ,
                      ID: 301 ),
            
            Questions(Question:"Który standard realizacji sieci Ethernet, definiuje sieć zbudowaną na kablu koncentrycznym, odługości segmentu nie przekraczającym 185 m?",
                      Answers:["100Base-T4" , "10Base-2",  "100Base-T2" , "10Base-5" ],
                      Correct: 1,
                      ID: 70),
            
            Questions(Question:"Który zapis jest maską podsieci dla adresu IP 217.152.128.100/25?",
                      Answers:["255.255.255.0" , "255.255.255.128",  "255.255.255.192" , "255.255.255.224" ],
                      Correct:1 ,
                      ID:336 ),
            
            Questions(Question:"Zarządzanie pasmem (ang. bandwidth control) w przełączniku to usługa",
                      Answers:["umożliwiająca zdalny dostęp do urządzenia" , "pozwalająca ograniczyć przepustowość na wybranym porcie",  "umożliwiająca łączenie przełączników równocześnie kilkoma łączami" , "pozwalająca na przesyłanie danych z wybranego portu równocześnie do innego portu" ],
                      Correct: 1,
                      ID: 514),
            
            Questions(Question:"Urządzenie sieciowe pracujące w trzeciej warstwie modelu ISO/OSI, operującej na adresach IP, to",
                      Answers:["hub" , "ruter",  "bridge" , "repeater" ],
                      Correct: 1,
                      ID:325 ),
            
            Questions(Question:"Atak DDoS (ang. Disributed Denial of Service) na serwer spowoduje",
                      Answers:["przechwycenie pakietów sieciowych" , "podmianę pakietów przesyłanych przez sieć",  "zbieranie informacji na temat atakowanej sieci" , "przeciążenie aplikacji serwującej określono dane" ],
                      Correct: 3,
                      ID:406 ),
            
            Questions(Question:"Każdy kolejny router IP na trasie pakietu",
                      Answers:["zwiększa wartość TTL przekazywanego pakietu o dwa" , "zmniejsza wartość TTL przekazywanego pakietu o dwa",  "zwiększa wartość TTL przekazywanego pakietu o jeden" , "zmniejsza wartość TTL przekazywanego pakietu o jeden" ],
                      Correct:3 ,
                      ID: 116),
            
            Questions(Question:"Zastosowanie którego urządzenia może być przyczyną zwiększenia liczby kolizji pakietów w sieci?",
                      Answers:["Mostu" , "Rutera",  "Przełącznika" , "Koncentratora" ],
                      Correct: 3,
                      ID: 374),
            
            Questions(Question:"Z ilu bitów składa się adres fizyczny MAC karty sieciowej?",
                      Answers:["16" , "32",  "48" , "64" ],
                      Correct: 2,
                      ID:191 ),
            
            Questions(Question:"Które z podanych oznaczeń określa, że jest to kabel typu skrętka posiadający podwójne ekranowanie?",
                      Answers:["FTP" , "S-STP",  "UTP" , "SFTP" ],
                      Correct: 1,
                      ID:135 ),
            
            Questions(Question:"Profil mobilny zmieniany jest w profil obowiązkowy użytkownika po",
                      Answers:["usunięciu pliku NTUSER.DAT" , "usunięciu pliku NTUSER.MAN",  "zmianie nazwy pliku NTUSER.MAN na NTUSER.DAT" , "zmianie nazwy pliku NTUSER.DAT na NTUSER.MAN" ],
                      Correct:3 ,
                      ID:89 ),
            
            Questions(Question:"Który adres IP jest adresem urządzenia pracującego w sieci 10.0.0.0/17?",
                      Answers:["10.0.128.127" , "10.0.127.128",  "10.0.128.254" , "10.0.254.128" ],
                      Correct:1 ,
                      ID:423 ),
            
            
            Questions(Question:"Który zapis jest prawidłowym adresem IPv6?",
                      Answers:["2001:DB8::BAF::FE94" , "2001:DB8::BAF:FE94",  "2001-DB8-BAF-FE94" , "2001.DB8.BAF.FE94" ],
                      Correct: 1,
                      ID: 413),
            
            Questions(Question:"Które polecenie jest stosowane do monitorowania lokalnych połączeń?",
                      Answers:["dir" , "host",  "route" , "netstat" ],
                      Correct: 3,
                      ID: 340),
            
            Questions(Question:"Administrator chce udostępnić w sieci trzem użytkownikom należącym do grupy Serwisanci tylko folder C:instrukcje. Które z rozwiązań powinien zastosować?",
                Answers:["Udostępnić grupie Wszyscy dysk C: i ograniczyć liczbę równoczesnych połączeń do 3" , "Udostępnić grupie Serwisanci dysk C: i nie ograniczać liczby równoczesnych połączeń",  "Udostępnić grupie Wszyscy folder C: instrukcje i ograniczyć liczbę równoczesnych połączeń do 3" , "Udostępnić grupie Serwisanci folder C: instrukcje i nie ograniczać liczby równoczesnych połączeń" ],
                Correct: 3,
                ID: 525),
            
            Questions(Question:"Która usługa, stworzona przez firmę Microsoft, umożliwia tłumaczenie nazw komputerów na adresy internetowe?",
                      Answers:["ARP" , "DHCP",  "IMAP" , "WINS" ],
                      Correct: 3,
                      ID: 479),
            
            Questions(Question:"Jeżeli na danej przestrzeni będą działały równocześnie dwie sieci WLAN standardy 802.11g, to aby wyeliminować możliwość wzajemnych zakłóceń należy im przydzielić kanały o numerach różniących się o",
                      Answers:["2" , "3",  "4" , "5" ],
                      Correct:3 ,
                      ID: 176),
            
            Questions(Question:"W systemie Windows XP na komputerze klienckim, plik hosts jest plikiem tekstowym, który służy do mapowania",
                Answers:["dysków twardych" , "nazw hostów na adresy IP",  "nazw hostów na adresy MAC" , "nazw hostów przez serwery DNS" ],
                Correct: 1,
                ID: 26),
            
            Questions(Question:"W systemie Linux narzędziem, które pokazuje trasę jaką pokonują pakiety od miejsca źródła do miejsca przeznaczenia, procentowy udział strat oraz informację na temat opóźnień pakietów, jest",
                      Answers:["mtr" , "ping",  "route" , "tracert" ],
                      Correct:0 ,
                      ID:599 ),
            
            Questions(Question:"Narzędzie iptables w systemie Linux służy do",
                      Answers:["konfiguracji karty sieciowej" , "konfiguracji zapory sieciowej",  "konfiguracji serwera pocztowego" , "konfiguracji zdalnego dostępu do serwera" ],
                      Correct: 1,
                      ID: 320),
            
            Questions(Question:"Adresy IPv6 są liczbami",
                      Answers:["32 bitowymi wyrażanymi w postaci napisów binarnych" , "64 bitowymi wyrażanymi w postaci napisów binarnych",  "256 bitowymi wyrażanymi w postaci napisów szesnastkowych" , "128 bitowymi wyrażanymi w postaci napisów szesnastkowych" ],
                      Correct: 3,
                      ID: 63),
            
            Questions(Question:"Na podstawie którego adresu przełącznik podejmuje decyzje o przesyłaniu ramki?",
                      Answers:["Adresu źródłowego IP" , "Adresu docelowego IP",  "Adresu źródłowego MAC" , "Adresu docelowego MAC" ],
                      Correct: 3,
                      ID:425 ),
            
            Questions(Question:"W której warstwie modelu ISO/OSI są stosowane adresy logiczne?",
                      Answers:["Fizycznej" , "Sieciowej",  "Transportowej" , "Łącza danych" ],
                      Correct: 1,
                      ID: 563),
            
            Questions(Question:"Informacje o kontach użytkowników w systemie LINUX przechowywane są w pliku",
                      Answers:["/etc/shells" , "/etc/group",  "/etc/passwd" , "/etc/shadow" ],
                      Correct: 2,
                      ID: 274),
            
            Questions(Question:"Protokół umożliwiający bezpieczną, zdalną pracę na serwerze to",
                      Answers:["SSH" , "POP3",  "SMTP" , "TELNET" ],
                      Correct:0 ,
                      ID: 401),
            
            Questions(Question:"Które polecenie w systemie Linux umożliwia przydzielanie praw do plików i katalogów?",
                      Answers:["gedit" , "mkdir",  "chmod" , "adduser" ],
                      Correct: 2,
                      ID: 437)
        ]
        
        nextQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func nextQuestion(){
    
        if FQuestions.count > 0 {
            
            FQuestionNumber = Int(arc4random_uniform(UInt32(FQuestions.count)))
            FAnswerNumber = FQuestions[FQuestionNumber].Correct
            questionLabel.text = FQuestions[FQuestionNumber].Question
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(FQuestions[FQuestionNumber].Answers[i], for: UIControlState.normal)
            }
            FQuestions.remove(at: FQuestionNumber)
          
            Buttons[0].backgroundColor=UIColor.lightGray
            Buttons[1].backgroundColor=UIColor.lightGray
            Buttons[2].backgroundColor=UIColor.lightGray
            Buttons[3].backgroundColor=UIColor.lightGray
        }else{
            questionLabel.text = "Koniec. Odpowiedziałeś na wszystkie pytania"
        }
        
    }
    
    
    @IBAction func Button_1(_ sender: Any) {
        if FAnswerNumber == 0{
            Buttons[0].backgroundColor=UIColor.green
        }else{
            Buttons[0].backgroundColor=UIColor.red
           Buttons[FAnswerNumber].backgroundColor=UIColor.green
        }
    }
    
    @IBAction func Button_2(_ sender: Any) {
        if FAnswerNumber == 1{
            Buttons[1].backgroundColor=UIColor.green
        }else{
            Buttons[1].backgroundColor=UIColor.red
            Buttons[FAnswerNumber].backgroundColor=UIColor.green
            
        }
    }
    
    @IBAction func Button_3(_ sender: Any) {
        if FAnswerNumber == 2{
            Buttons[2].backgroundColor=UIColor.green
        }else{
            Buttons[2].backgroundColor=UIColor.red
            Buttons[FAnswerNumber].backgroundColor=UIColor.green
        }
    }
    
    @IBAction func Button_4(_ sender: Any) {
        if FAnswerNumber == 3{
           Buttons[3].backgroundColor=UIColor.green
        }else{
            Buttons[3].backgroundColor=UIColor.red
            Buttons[FAnswerNumber].backgroundColor=UIColor.green
        }
    }
    
    @IBAction func SwipeLeft(_ sender: UISwipeGestureRecognizer) {
        nextQuestion()
    }
    
    

    
}

