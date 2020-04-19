.class Lus/zoom/zrc/view/ZRCPinShareScreenView$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ZRCPinShareScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/ZRCPinShareScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 59
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrPinStatusOfScreens:I

    if-eq p2, p1, :cond_3

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrwPinStatusOfScreen:I

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareParticipants:I

    if-eq p2, p1, :cond_2

    sget p1, Landroidx/databinding/library/baseAdapters/BR;->zrwAllShareParticipants:I

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->allShareSources:I

    if-ne p2, p1, :cond_4

    .line 67
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$100(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V

    goto :goto_2

    .line 65
    :cond_2
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->onShareListChanged()V

    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$000(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V

    .line 61
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->onShareListChanged()V

    .line 62
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->updateListAndWarningMessage()V

    .line 63
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$1;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$100(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V

    :cond_4
    :goto_2
    return-void
.end method
