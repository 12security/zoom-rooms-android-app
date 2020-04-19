.class Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ZRCChangeContentScreenPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment$1;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 48
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->videoLayoutStatus:I

    if-ne p2, p1, :cond_1

    .line 49
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getVideoLayoutStatus()Lus/zoom/zrcsdk/model/VideoLayoutStatus;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment$1;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;->access$000(Lus/zoom/zrc/phoneview/ZRCChangeContentScreenPageFragment;)V

    :cond_1
    return-void
.end method
