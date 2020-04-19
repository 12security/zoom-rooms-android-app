.class public Lus/zoom/zrc/login/LoginCalendarHelper;
.super Ljava/lang/Object;
.source "LoginCalendarHelper.java"


# instance fields
.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method canAddCalendar()Z
    .locals 2

    .line 90
    invoke-static {}, Lus/zoom/zrc/utils/DeviceInfoUtils;->hasNoBrowser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 93
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginCalendarHelper;->services:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getCalendarResource(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;
    .locals 3
    .param p1    # Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 54
    :cond_0
    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getResources()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 63
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    .line 64
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_4
    return-object v0
.end method

.method public getCalendarService(Ljava/lang/String;)Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
    .locals 4

    .line 33
    invoke-static {p1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 37
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/LoginCalendarHelper;->services:Ljava/util/List;

    if-nez v0, :cond_1

    return-object v1

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 42
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method getCalendarServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lus/zoom/zrc/login/LoginCalendarHelper;->services:Ljava/util/List;

    return-object v0
.end method

.method public hasCalendarToDisplay()Z
    .locals 4

    .line 97
    iget-object v0, p0, Lus/zoom/zrc/login/LoginCalendarHelper;->services:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 101
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 103
    invoke-virtual {p0, v2}, Lus/zoom/zrc/login/LoginCalendarHelper;->isServiceCanDisplay(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isResourceCanCustomInput(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "4"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "5"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isServiceCanDisplay(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Z
    .locals 2

    .line 83
    invoke-virtual {p0, p1}, Lus/zoom/zrc/login/LoginCalendarHelper;->isResourceCanCustomInput(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 86
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getResources()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method setCalendarServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lus/zoom/zrc/login/LoginCalendarHelper;->services:Ljava/util/List;

    return-void
.end method
