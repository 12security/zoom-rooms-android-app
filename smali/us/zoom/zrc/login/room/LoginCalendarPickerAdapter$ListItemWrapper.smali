.class Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;
.super Ljava/lang/Object;
.source "LoginCalendarPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemWrapper"
.end annotation


# instance fields
.field private mCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

.field private mCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->mCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    return-void
.end method

.method constructor <init>(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->mCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    return-void
.end method


# virtual methods
.method getCalendarResource()Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;
    .locals 1

    .line 210
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->mCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    return-object v0
.end method

.method getCalendarService()Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;
    .locals 1

    .line 206
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->mCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    return-object v0
.end method

.method getDisplayEmail()Ljava/lang/String;
    .locals 2

    .line 225
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->mCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-static {v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->access$400(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;)Lus/zoom/zrc/login/LoginCalendarHelper;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    invoke-static {v1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->access$300(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;)Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/LoginCalendarHelper;->isResourceCanCustomInput(Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->mCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method getDisplayName()Ljava/lang/String;
    .locals 3

    .line 214
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->mCalendarService:Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarServiceItem;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->mCalendarResource:Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCCalendarResourceItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "CalendarPickerList"

    const-string v1, "WEIRD CASE: a wrapper without data."

    const/4 v2, 0x0

    .line 219
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method
