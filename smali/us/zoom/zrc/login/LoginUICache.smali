.class public Lus/zoom/zrc/login/LoginUICache;
.super Ljava/lang/Object;
.source "LoginUICache.java"

# interfaces
.implements Lus/zoom/zrc/login/LoginContract$IUICache;


# instance fields
.field private billingType:I

.field private createRoomKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyValues:Landroid/os/Bundle;

.field private selectedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

.field private selectedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

.field private selectedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

.field private signInKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginUICache;->signInKeys:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginUICache;->createRoomKeys:Ljava/util/List;

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/login/LoginUICache;->keyValues:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public canCreateRoom(Landroid/content/Context;)Z
    .locals 2

    .line 114
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTabletOrTV(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x2

    .line 117
    iget v1, p0, Lus/zoom/zrc/login/LoginUICache;->billingType:I

    if-eq p1, v1, :cond_1

    const/16 p1, 0x64

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public clear(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lus/zoom/zrc/login/LoginUICache;->signInKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lus/zoom/zrc/login/LoginUICache;->keyValues:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginUICache;->signInKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 102
    iget-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->createRoomKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lus/zoom/zrc/login/LoginUICache;->keyValues:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->createRoomKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->selectedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    .line 107
    iput-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->selectedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 108
    iput-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->selectedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    :cond_3
    return-void
.end method

.method public getBillingType()I
    .locals 1

    .line 54
    iget v0, p0, Lus/zoom/zrc/login/LoginUICache;->billingType:I

    return v0
.end method

.method public getSelectedCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;
    .locals 1

    .line 44
    iget-object v0, p0, Lus/zoom/zrc/login/LoginUICache;->selectedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    return-object v0
.end method

.method public getSelectedCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
    .locals 1

    .line 39
    iget-object v0, p0, Lus/zoom/zrc/login/LoginUICache;->selectedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    return-object v0
.end method

.method public getSelectedLocation()Lus/zoom/zrcsdk/model/ZRCLocationTree;
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/zrc/login/LoginUICache;->selectedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lus/zoom/zrc/login/LoginUICache;->keyValues:Landroid/os/Bundle;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public selectCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->selectedCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    return-void
.end method

.method public selectCalendarService(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->selectedCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    return-void
.end method

.method public selectLocation(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->selectedLocation:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    return-void
.end method

.method public setBillingType(I)V
    .locals 0

    .line 85
    iput p1, p0, Lus/zoom/zrc/login/LoginUICache;->billingType:I

    return-void
.end method

.method public setKeyValue(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 75
    iget-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->signInKeys:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->createRoomKeys:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/login/LoginUICache;->keyValues:Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
