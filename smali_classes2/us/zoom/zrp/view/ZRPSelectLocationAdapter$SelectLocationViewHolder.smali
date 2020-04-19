.class Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ZRPSelectLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrp/view/ZRPSelectLocationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectLocationViewHolder"
.end annotation


# instance fields
.field private ivSelectFloorItemFloorSelectedIdentifier:Landroid/widget/ImageView;

.field private ivSelectFloorItemLocationEnter:Landroid/widget/ImageView;

.field private ivSelectFloorItemLocationSelectedIdentifier:Landroid/widget/ImageView;

.field final synthetic this$0:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

.field private tvSelectFloorItemLocationName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPSelectLocationAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lus/zoom/zrp/view/ZRPSelectLocationAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 211
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->this$0:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    .line 212
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 214
    sget p1, Lus/zoom/zrcbox/R$id;->tv_select_floor_item_location_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->tvSelectFloorItemLocationName:Landroid/widget/TextView;

    .line 215
    sget p1, Lus/zoom/zrcbox/R$id;->iv_select_floor_item_floor_selected_identifier:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->ivSelectFloorItemFloorSelectedIdentifier:Landroid/widget/ImageView;

    .line 216
    sget p1, Lus/zoom/zrcbox/R$id;->iv_select_floor_item_location_selected_identifier:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->ivSelectFloorItemLocationSelectedIdentifier:Landroid/widget/ImageView;

    .line 217
    sget p1, Lus/zoom/zrcbox/R$id;->iv_select_floor_item_location_enter:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->ivSelectFloorItemLocationEnter:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 204
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->tvSelectFloorItemLocationName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 204
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->ivSelectFloorItemFloorSelectedIdentifier:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 204
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->ivSelectFloorItemLocationEnter:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 204
    iget-object p0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;->ivSelectFloorItemLocationSelectedIdentifier:Landroid/widget/ImageView;

    return-object p0
.end method
