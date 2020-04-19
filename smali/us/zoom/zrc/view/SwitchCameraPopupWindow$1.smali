.class Lus/zoom/zrc/view/SwitchCameraPopupWindow$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "SwitchCameraPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/SwitchCameraPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/SwitchCameraPopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/SwitchCameraPopupWindow;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow$1;->this$0:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 49
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->videoStatus:I

    if-ne p1, p2, :cond_1

    .line 50
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getVideoStatus()Lus/zoom/zrcsdk/model/ZRCVideoStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCVideoStatus;->isSending()Z

    move-result p1

    if-nez p1, :cond_2

    .line 52
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow$1;->this$0:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    invoke-virtual {p1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->dismiss()V

    goto :goto_0

    .line 54
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->settingsDeviceInfo:I

    if-ne p1, p2, :cond_2

    .line 55
    iget-object p1, p0, Lus/zoom/zrc/view/SwitchCameraPopupWindow$1;->this$0:Lus/zoom/zrc/view/SwitchCameraPopupWindow;

    invoke-static {p1}, Lus/zoom/zrc/view/SwitchCameraPopupWindow;->access$000(Lus/zoom/zrc/view/SwitchCameraPopupWindow;)V

    :cond_2
    :goto_0
    return-void
.end method
