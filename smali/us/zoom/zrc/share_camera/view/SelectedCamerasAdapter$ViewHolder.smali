.class Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectedCamerasAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field scCamNameTV:Landroid/widget/TextView;

.field scCamSelectedTV:Landroid/widget/TextView;

.field scSelectIconIV:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget v0, Lus/zoom/zrcbox/R$id;->sc_select_icon_iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scSelectIconIV:Landroid/widget/ImageView;

    .line 114
    sget v0, Lus/zoom/zrcbox/R$id;->sc_cam_name_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scCamNameTV:Landroid/widget/TextView;

    .line 116
    sget v0, Lus/zoom/zrcbox/R$id;->sc_cam_selected:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/share_camera/view/SelectedCamerasAdapter$ViewHolder;->scCamSelectedTV:Landroid/widget/TextView;

    return-void
.end method
