.class Lus/zoom/zrc/ActivityLauncher$14;
.super Lus/zoom/zrc/base/notification/INotification;
.source "ActivityLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ActivityLauncher;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ActivityLauncher;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ActivityLauncher;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lus/zoom/zrc/ActivityLauncher$14;->this$0:Lus/zoom/zrc/ActivityLauncher;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 1

    .line 143
    instance-of v0, p1, Lcom/google/common/collect/ImmutableMap;

    if-eqz v0, :cond_0

    .line 144
    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    const-string v0, "meeting"

    .line 145
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCMeetingListItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 147
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/ActivityLauncher$14;->this$0:Lus/zoom/zrc/ActivityLauncher;

    invoke-static {v0, p1}, Lus/zoom/zrc/ActivityLauncher;->access$1300(Lus/zoom/zrc/ActivityLauncher;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;)V

    return-void
.end method
