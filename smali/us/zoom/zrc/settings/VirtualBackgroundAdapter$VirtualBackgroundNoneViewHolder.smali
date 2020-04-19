.class Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNoneViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VirtualBackgroundAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/settings/VirtualBackgroundAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualBackgroundNoneViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

.field virtualBackgroundNoneImg:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/VirtualBackgroundAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lus/zoom/zrc/settings/VirtualBackgroundAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 170
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNoneViewHolder;->this$0:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    .line 171
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 172
    sget p1, Lus/zoom/zrcbox/R$id;->virtual_background_none_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$VirtualBackgroundNoneViewHolder;->virtualBackgroundNoneImg:Landroid/widget/ImageView;

    return-void
.end method
