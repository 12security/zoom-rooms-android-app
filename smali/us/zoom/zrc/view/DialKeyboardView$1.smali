.class Lus/zoom/zrc/view/DialKeyboardView$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "DialKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/DialKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DialKeyboardView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DialKeyboardView;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$1;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 99
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->callHistoryDisabled:I

    if-ne p1, p2, :cond_0

    .line 100
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$1;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$000(Lus/zoom/zrc/view/DialKeyboardView;)V

    goto :goto_0

    .line 101
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideContactList:I

    if-ne p1, p2, :cond_1

    .line 102
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$1;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$100(Lus/zoom/zrc/view/DialKeyboardView;)V

    goto :goto_0

    .line 103
    :cond_1
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    if-ne p1, p2, :cond_2

    .line 104
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$1;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$200(Lus/zoom/zrc/view/DialKeyboardView;)V

    :cond_2
    :goto_0
    return-void
.end method
