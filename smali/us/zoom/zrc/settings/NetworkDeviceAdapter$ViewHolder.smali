.class public Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NetworkDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/settings/NetworkDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field checkBoxParent:Landroid/view/View;

.field connectingStateView:Landroid/view/View;

.field deviceName:Landroid/widget/TextView;

.field deviceState:Landroid/widget/TextView;

.field light:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 258
    sget v0, Lus/zoom/zrcbox/R$id;->device_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    .line 259
    sget v0, Lus/zoom/zrcbox/R$id;->check_box_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBoxParent:Landroid/view/View;

    .line 260
    sget v0, Lus/zoom/zrcbox/R$id;->check_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 261
    sget v0, Lus/zoom/zrcbox/R$id;->device_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->deviceState:Landroid/widget/TextView;

    .line 262
    sget v0, Lus/zoom/zrcbox/R$id;->identify:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->light:Landroid/view/View;

    .line 263
    sget v0, Lus/zoom/zrcbox/R$id;->connecting:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/NetworkDeviceAdapter$ViewHolder;->connectingStateView:Landroid/view/View;

    return-void
.end method
