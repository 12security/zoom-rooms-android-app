.class Lus/zoom/zrc/phonecall/PhoneListItemData;
.super Ljava/lang/Object;
.source "PhoneListItemData.java"


# instance fields
.field call:Lus/zoom/zrcsdk/model/ZRCIncomingSIPCall;

.field description:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneListItemData;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lus/zoom/zrc/phonecall/PhoneListItemData;->description:Ljava/lang/String;

    return-void
.end method
