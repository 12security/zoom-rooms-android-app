.class Lus/zoom/zrc/ActivityLauncher$24;
.super Lus/zoom/androidlib/app/ForegroundTask;
.source "ActivityLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/ActivityLauncher;->startNormalMeeting()V
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

    .line 550
    iput-object p1, p0, Lus/zoom/zrc/ActivityLauncher$24;->this$0:Lus/zoom/zrc/ActivityLauncher;

    invoke-direct {p0}, Lus/zoom/androidlib/app/ForegroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lus/zoom/androidlib/app/ZMActivity;)V
    .locals 1

    .line 553
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingInfo()Lus/zoom/zrcsdk/model/ZRCMeetingInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getMeetingType()I

    move-result p1

    if-nez p1, :cond_0

    .line 554
    iget-object p1, p0, Lus/zoom/zrc/ActivityLauncher$24;->this$0:Lus/zoom/zrc/ActivityLauncher;

    invoke-static {p1}, Lus/zoom/zrc/ActivityLauncher;->access$2200(Lus/zoom/zrc/ActivityLauncher;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Lus/zoom/zrc/MeetingActivity;

    invoke-static {p1, v0}, Lus/zoom/zrc/utils/ZRCUIUtils;->safeStartActivity(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
