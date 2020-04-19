.class public Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
.super Ljava/lang/Object;
.source "ZRCCalendarServiceItem.java"


# static fields
.field public static final CALENDAR_SERVICE_TYPE_DEFAULT:Ljava/lang/String; = "2"

.field public static final CALENDAR_SERVICE_TYPE_EXCHANGE:Ljava/lang/String; = "4"

.field public static final CALENDAR_SERVICE_TYPE_GOOGLE:Ljava/lang/String; = "3"

.field public static final CALENDAR_SERVICE_TYPE_OFFICE365:Ljava/lang/String; = "5"


# instance fields
.field private email:Ljava/lang/String;

.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;",
            ">;"
        }
    .end annotation
.end field

.field private serviceId:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    .line 71
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->serviceId:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->serviceId:Ljava/lang/String;

    invoke-static {v0, p1}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 76
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->serviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->email:Ljava/lang/String;

    return-void
.end method

.method public setResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->resources:Ljava/util/List;

    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->serviceId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->status:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCCalendarServiceItem{serviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
