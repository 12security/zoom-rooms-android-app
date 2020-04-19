.class Lus/zoom/zrc/settings/VirtualBackgroundAdapter$1;
.super Ljava/lang/Object;
.source "VirtualBackgroundAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

.field final synthetic val$imgView:Landroid/widget/ImageView;

.field final synthetic val$item:Lus/zoom/zrcsdk/model/ZRCVirtualBackground;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/VirtualBackgroundAdapter;Lus/zoom/zrcsdk/model/ZRCVirtualBackground;Landroid/widget/ImageView;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$1;->this$0:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    iput-object p2, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    iput-object p3, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$1;->val$imgView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 117
    iget-object p1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$1;->this$0:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    invoke-static {p1}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->access$000(Lus/zoom/zrc/settings/VirtualBackgroundAdapter;)Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$1;->this$0:Lus/zoom/zrc/settings/VirtualBackgroundAdapter;

    invoke-static {p1}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter;->access$000(Lus/zoom/zrc/settings/VirtualBackgroundAdapter;)Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$1;->val$item:Lus/zoom/zrcsdk/model/ZRCVirtualBackground;

    iget-object v1, p0, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$1;->val$imgView:Landroid/widget/ImageView;

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/settings/VirtualBackgroundAdapter$OnItemClickListener;->onSelectVirtualBackground(Lus/zoom/zrcsdk/model/ZRCVirtualBackground;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
