.class Lus/zoom/zrc/view/MeetingMainControllerFragment$2;
.super Ljava/lang/Object;
.source "MeetingMainControllerFragment.java"

# interfaces
.implements Lus/zoom/zrc/utils/DeviceInfoObserver$SettingLockerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/MeetingMainControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingMainControllerFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$2;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingLocked(Z)V
    .locals 0

    .line 108
    iget-object p1, p0, Lus/zoom/zrc/view/MeetingMainControllerFragment$2;->this$0:Lus/zoom/zrc/view/MeetingMainControllerFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/view/MeetingMainControllerFragment;->onSpeakerVolumeControlStatusChanged()V

    return-void
.end method
