.class Lus/zoom/zrc/view/ZRCPinUserDialogFragment$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;
.source "ZRCPinUserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ZRCPinUserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCPinUserDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCPinUserDialogFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment$1;->this$0:Lus/zoom/zrc/view/ZRCPinUserDialogFragment;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;->onPinStatusOfScreenNotification(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;)V

    .line 73
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment$1;->this$0:Lus/zoom/zrc/view/ZRCPinUserDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->access$000(Lus/zoom/zrc/view/ZRCPinUserDialogFragment;)V

    return-void
.end method

.method public onSpotlightStatusNotification(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;->onSpotlightStatusNotification(Lus/zoom/zrcsdk/model/ZRCSpotlightStatus;)V

    .line 79
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment$1;->this$0:Lus/zoom/zrc/view/ZRCPinUserDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->access$000(Lus/zoom/zrc/view/ZRCPinUserDialogFragment;)V

    return-void
.end method
