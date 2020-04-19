.class Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNormalViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VirtualBackgroundAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/settings/VirtualBackgroundAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualBackgroundNormalViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

.field virtualBackgroundListNormalImg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/VirtualBackgroundAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lus/zoom/zrc/settings/VirtualBackgroundAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 160
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNormalViewHolder;->this$0:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    .line 161
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 162
    sget p1, Lus/zoom/zrcbox/R$id;->virtual_background_list_normal_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNormalViewHolder;->virtualBackgroundListNormalImg:Landroid/widget/ImageView;

    return-void
.end method
