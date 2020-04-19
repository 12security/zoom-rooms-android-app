.class Lus/zoom/zrc/view/PTMenuView$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "PTMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/PTMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/PTMenuView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/PTMenuView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lus/zoom/zrc/view/PTMenuView$1;->this$0:Lus/zoom/zrc/view/PTMenuView;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 172
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->controlSystemDevices:I

    if-ne p1, p2, :cond_3

    .line 173
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->getControlSystemDevices()Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView$1;->this$0:Lus/zoom/zrc/view/PTMenuView;

    invoke-static {p1}, Lus/zoom/zrc/view/PTMenuView;->access$000(Lus/zoom/zrc/view/PTMenuView;)Lus/zoom/zrc/view/PTMenuViewItem;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/PTMenuViewItem;->setVisibility(I)V

    goto :goto_1

    .line 177
    :cond_1
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView$1;->this$0:Lus/zoom/zrc/view/PTMenuView;

    invoke-static {p1}, Lus/zoom/zrc/view/PTMenuView;->access$000(Lus/zoom/zrc/view/PTMenuView;)Lus/zoom/zrc/view/PTMenuViewItem;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lus/zoom/zrc/view/PTMenuViewItem;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView$1;->this$0:Lus/zoom/zrc/view/PTMenuView;

    invoke-static {p1}, Lus/zoom/zrc/view/PTMenuView;->access$100(Lus/zoom/zrc/view/PTMenuView;)Lus/zoom/zrc/view/PTMenuViewItem;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/PTMenuView$1;->this$0:Lus/zoom/zrc/view/PTMenuView;

    invoke-static {p2}, Lus/zoom/zrc/view/PTMenuView;->access$000(Lus/zoom/zrc/view/PTMenuView;)Lus/zoom/zrc/view/PTMenuViewItem;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 179
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView$1;->this$0:Lus/zoom/zrc/view/PTMenuView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/PTMenuView;->autoRollBackToProperTab()V

    .line 181
    :cond_2
    :goto_1
    iget-object p1, p0, Lus/zoom/zrc/view/PTMenuView$1;->this$0:Lus/zoom/zrc/view/PTMenuView;

    invoke-static {p1}, Lus/zoom/zrc/view/PTMenuView;->access$200(Lus/zoom/zrc/view/PTMenuView;)V

    :cond_3
    return-void
.end method
