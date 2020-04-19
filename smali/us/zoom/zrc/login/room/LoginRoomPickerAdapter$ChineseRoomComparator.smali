.class Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ChineseRoomComparator;
.super Ljava/lang/Object;
.source "LoginRoomPickerAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChineseRoomComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lus/zoom/zrcsdk/model/RoomInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ChineseRoomComparator;->mCollator:Ljava/text/Collator;

    .line 260
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ChineseRoomComparator;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method

.method synthetic constructor <init>(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ChineseRoomComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 254
    check-cast p1, Lus/zoom/zrcsdk/model/RoomInfo;

    check-cast p2, Lus/zoom/zrcsdk/model/RoomInfo;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ChineseRoomComparator;->compare(Lus/zoom/zrcsdk/model/RoomInfo;Lus/zoom/zrcsdk/model/RoomInfo;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/zrcsdk/model/RoomInfo;Lus/zoom/zrcsdk/model/RoomInfo;)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 269
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/RoomInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    .line 273
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ChineseRoomComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
