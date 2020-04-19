.class Lus/zoom/zrc/model/VirtualBackgroundHelper$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "VirtualBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/model/VirtualBackgroundHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/model/VirtualBackgroundHelper;


# direct methods
.method constructor <init>(Lus/zoom/zrc/model/VirtualBackgroundHelper;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper$1;->this$0:Lus/zoom/zrc/model/VirtualBackgroundHelper;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 40
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->virtualBackgrounds:I

    if-ne p1, p2, :cond_0

    .line 41
    iget-object p1, p0, Lus/zoom/zrc/model/VirtualBackgroundHelper$1;->this$0:Lus/zoom/zrc/model/VirtualBackgroundHelper;

    invoke-virtual {p1}, Lus/zoom/zrc/model/VirtualBackgroundHelper;->downloadVirtualBackgroundImageFiles()V

    :cond_0
    return-void
.end method
