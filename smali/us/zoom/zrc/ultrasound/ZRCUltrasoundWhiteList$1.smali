.class Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ZRCUltrasoundWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;


# direct methods
.method constructor <init>(Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList$1;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 61
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomInfo:I

    if-ne p1, p2, :cond_0

    .line 62
    iget-object p1, p0, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList$1;->this$0:Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;

    invoke-static {p1}, Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;->access$000(Lus/zoom/zrc/ultrasound/ZRCUltrasoundWhiteList;)V

    :cond_0
    return-void
.end method
