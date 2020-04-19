.class public Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChangeContentSharingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

.field tvCheckMark:Landroid/widget/TextView;

.field tvMultiShareName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;Landroid/view/View;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;->this$0:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    .line 131
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 132
    sget p1, Lus/zoom/zrcbox/R$id;->multi_share_sharing_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;->tvMultiShareName:Landroid/widget/TextView;

    .line 133
    sget p1, Lus/zoom/zrcbox/R$id;->multi_share_item_check_mark:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;->tvCheckMark:Landroid/widget/TextView;

    return-void
.end method
