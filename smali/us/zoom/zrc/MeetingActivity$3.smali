.class Lus/zoom/zrc/MeetingActivity$3;
.super Ljava/lang/Object;
.source "MeetingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/MeetingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/MeetingActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/MeetingActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity$3;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 175
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->exitMeeting(Z)I

    .line 176
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity$3;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-virtual {p1}, Lus/zoom/zrc/MeetingActivity;->showWaitingDialog()V

    return-void
.end method
