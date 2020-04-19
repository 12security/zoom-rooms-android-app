.class Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ZRCSpeakerVolumeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$1;->this$0:Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 30
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->speakerVolume:I

    if-ne p1, p2, :cond_0

    .line 31
    iget-object p1, p0, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$1;->this$0:Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;

    invoke-static {p1}, Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;->access$000(Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper;)V

    :cond_0
    return-void
.end method
