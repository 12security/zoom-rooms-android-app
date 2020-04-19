.class Lus/zoom/zrc/PTActivity$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.source "PTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/PTActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/PTActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$1;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeetingEndedNotification(ILjava/lang/String;)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;->onMeetingEndedNotification(ILjava/lang/String;)V

    return-void
.end method

.method public onMeetingExitedNotification(I)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;->onMeetingExitedNotification(I)V

    .line 154
    iget-object p1, p0, Lus/zoom/zrc/PTActivity$1;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {p1}, Lus/zoom/zrc/PTActivity;->access$000(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/zrc/PTActivity$1;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {p1}, Lus/zoom/zrc/PTActivity;->access$000(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lus/zoom/zrc/PTActivity$1;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {p1}, Lus/zoom/zrc/PTActivity;->access$000(Lus/zoom/zrc/PTActivity;)Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
