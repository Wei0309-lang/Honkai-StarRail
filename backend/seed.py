from app.database import engine, SessionLocal
from app.models import Base, Character, Planet
from sqlalchemy import text

Base.metadata.drop_all(bind=engine)
Base.metadata.create_all(bind=engine)

characters = [
    Character(Name="Acheron",        belong="匹諾康尼",   photoOfCharacter="Personal/Acheron.webp",                attribute="Lightning", pc=False, url="https://wiki.biligame.com/sr/黃泉"),
    Character(Name="Aglaea",         belong="翁法羅斯",   photoOfCharacter="Personal/Aglaea.webp",                 attribute="Lightning", pc=False, url=""),
    Character(Name="Anaxa",          belong="翁法羅斯",   photoOfCharacter="Personal/Anaxa.webp",                  attribute="Wind",      pc=False, url=""),
    Character(Name="Aventurine",     belong="匹諾康尼",   photoOfCharacter="Personal/Aventurine.webp",             attribute="Imaginary", pc=False, url=""),
    Character(Name="Black Swan",     belong="匹諾康尼",   photoOfCharacter="Personal/BlackSwan.webp",              attribute="Wind",      pc=False, url=""),
    Character(Name="Blade",          belong="黑塔空間站", photoOfCharacter="Personal/Blade.webp",                  attribute="Wind",      pc=False, url=""),
    Character(Name="Boothill",       belong="匹諾康尼",   photoOfCharacter="Personal/Boothill.webp",               attribute="Fire",      pc=False, url=""),
    Character(Name="Castorice",      belong="翁法羅斯",   photoOfCharacter="Personal/Castorics.webp",              attribute="Quantum",   pc=False, url=""),
    Character(Name="Cerydra",        belong="翁法羅斯",   photoOfCharacter="Personal/Cerydra.webp",                attribute="Ice",       pc=False, url=""),
    Character(Name="Cipher",         belong="翁法羅斯",   photoOfCharacter="Personal/Cipher.webp",                 attribute="Quantum",   pc=False, url=""),
    Character(Name="Dan Heng IL",   belong="羅浮仙舟",   photoOfCharacter="Personal/DanHeng_lmbitorLunae.webp",   attribute="Imaginary", pc=False, url=""),
    Character(Name="Dr. Ratio",      belong="匹諾康尼",   photoOfCharacter="Personal/Dr_Ratio.webp",               attribute="Imaginary", pc=False, url=""),
    Character(Name="Everynight",     belong="翁法羅斯",   photoOfCharacter="Personal/Everynight.webp",             attribute="Quantum",   pc=False, url=""),
    Character(Name="Feixiao",        belong="羅浮仙舟",   photoOfCharacter="Personal/Feixiao.webp",                attribute="Wind",      pc=False, url=""),
    Character(Name="Firefly",        belong="匹諾康尼",   photoOfCharacter="Personal/FireFly.webp",                attribute="Fire",      pc=False, url=""),
    Character(Name="Fu Xuan",        belong="羅浮仙舟",   photoOfCharacter="Personal/FuXuan.webp",                 attribute="Quantum",   pc=False, url=""),
    Character(Name="Fugue",          belong="匹諾康尼",   photoOfCharacter="Personal/Fugue.webp",                  attribute="Fire",      pc=False, url=""),
    Character(Name="Himeko",         belong="黑塔空間站", photoOfCharacter="Personal/Hemiko.webp",                 attribute="Fire",      pc=False, url=""),
    Character(Name="Herta",          belong="黑塔空間站", photoOfCharacter="Personal/Heta.webp",                   attribute="Ice",       pc=False, url=""),
    Character(Name="Huohuo",         belong="羅浮仙舟",   photoOfCharacter="Personal/Huohuo.webp",                 attribute="Wind",      pc=False, url=""),
    Character(Name="Hyacinthia",     belong="翁法羅斯",   photoOfCharacter="Personal/Hyacinthia.webp",             attribute="Ice",       pc=False, url=""),
    Character(Name="Hysilens",       belong="翁法羅斯",   photoOfCharacter="Personal/Hysilens.webp",               attribute="Fire",      pc=False, url=""),
    Character(Name="Jade",           belong="羅浮仙舟",   photoOfCharacter="Personal/Jade.webp",                   attribute="Quantum",   pc=False, url=""),
    Character(Name="Jiaoqiu",        belong="羅浮仙舟",   photoOfCharacter="Personal/Jiaoqiu.webp",                attribute="Fire",      pc=False, url=""),
    Character(Name="Jing Yuan",      belong="羅浮仙舟",   photoOfCharacter="Personal/JingYuan.webp",               attribute="Lightning", pc=False, url=""),
    Character(Name="Jingliu",        belong="羅浮仙舟",   photoOfCharacter="Personal/Jingliu.webp",                attribute="Ice",       pc=False, url=""),
    Character(Name="Kafka",          belong="黑塔空間站", photoOfCharacter="Personal/Kafkal.webp",                 attribute="Lightning", pc=False, url=""),
    Character(Name="Lingsha",        belong="羅浮仙舟",   photoOfCharacter="Personal/Lingsha.webp",                attribute="Wind",      pc=False, url=""),
    Character(Name="Luocha",         belong="羅浮仙舟",   photoOfCharacter="Personal/Luocha.webp",                 attribute="Imaginary", pc=False, url=""),
    Character(Name="March 7th Hunt", belong="黑塔空間站", photoOfCharacter="Personal/March7_Hunt.webp",            attribute="Fire",      pc=False, url=""),
    Character(Name="March 7th",      belong="黑塔空間站", photoOfCharacter="Personal/March7_Preservation.webp",   attribute="Ice",       pc=False, url=""),
    Character(Name="Mydeimos",       belong="翁法羅斯",   photoOfCharacter="Personal/Mydeimos.webp",               attribute="Wind",      pc=False, url=""),
    Character(Name="Phainon",        belong="翁法羅斯",   photoOfCharacter="Personal/Phainon.webp",                attribute="Physical",  pc=False, url=""),
    Character(Name="Rappa",          belong="匹諾康尼",   photoOfCharacter="Personal/Rappa.webp",                  attribute="Imaginary", pc=False, url=""),
    Character(Name="Robin",          belong="匹諾康尼",   photoOfCharacter="Personal/Robin.webp",                  attribute="Physical",  pc=False, url=""),
    Character(Name="Ruan Mei",       belong="黑塔空間站", photoOfCharacter="Personal/RuanMei.webp",                attribute="Ice",       pc=False, url=""),
    Character(Name="Seele",          belong="貝洛柏格",   photoOfCharacter="Personal/Seele.webp",                  attribute="Quantum",   pc=False, url=""),
    Character(Name="Silver Wolf",    belong="黑塔空間站", photoOfCharacter="Personal/Silver.webp",                 attribute="Quantum",   pc=False, url=""),
    Character(Name="Sparkle",        belong="匹諾康尼",   photoOfCharacter="Personal/Sparkle.webp",                attribute="Quantum",   pc=False, url=""),
    Character(Name="Sunday",         belong="匹諾康尼",   photoOfCharacter="Personal/Sunday.webp",                 attribute="Imaginary", pc=False, url=""),
    Character(Name="Topaz",          belong="羅浮仙舟",   photoOfCharacter="Personal/Topaz.webp",                  attribute="Fire",      pc=False, url=""),
    Character(Name="Tribbie",        belong="翁法羅斯",   photoOfCharacter="Personal/Tribbie.webp",                attribute="Quantum",   pc=False, url=""),
    Character(Name="Welt",           belong="黑塔空間站", photoOfCharacter="Personal/Welt.webp",                   attribute="Imaginary", pc=False, url=""),
    Character(Name="Yunli",          belong="羅浮仙舟",   photoOfCharacter="Personal/Yunli.webp",                  attribute="Physical",  pc=False, url=""),
    Character(Name="Bosenmori",      belong="翁法羅斯",   photoOfCharacter="Personal/Bosenmori.png",               attribute="Physical",  pc=False, url=""),
]

planets = [
    Planet(planet_Name="黑塔空間站", photo="Background/PlaceOfHeta.jpg",  goto=""),
    Planet(planet_Name="羅浮仙舟",   photo="Background/Lofu.jpg",          goto=""),
    Planet(planet_Name="貝洛柏格",   photo="Background/Belobog.png",       goto=""),
    Planet(planet_Name="匹諾康尼",   photo="Background/Penocany.jpg",      goto=""),
    Planet(planet_Name="翁法羅斯",   photo="Background/Omphalos.png",      goto=""),
]

db = SessionLocal()
try:
    db.add_all(characters)
    db.add_all(planets)
    db.commit()
    print(f"Seeded {len(characters)} characters and {len(planets)} planets.")
except Exception as e:
    db.rollback()
    print("ERROR:", e)
finally:
    db.close()
