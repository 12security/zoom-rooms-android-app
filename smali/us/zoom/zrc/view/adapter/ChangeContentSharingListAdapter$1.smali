.class Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;
.super Ljava/lang/Object;
.source "ChangeContentSharingListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

.field final synthetic val$atPosUserID:I

.field final synthetic val$holder:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;

.field final synthetic val$screenShareSourceID:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;II)V
    .locals 0

    .line 106
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    iput-object p2, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;->val$holder:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;

    iput p3, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;->val$atPosUserID:I

    iput p4, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;->val$screenShareSourceID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 109
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->access$000(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;)Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;->access$000(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter;)Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;->val$holder:Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;

    iget v1, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;->val$atPosUserID:I

    iget v2, p0, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$1;->val$screenShareSourceID:I

    invoke-interface {p1, v0, v1, v2}, Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;->onItemClicked(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;II)V

    :cond_0
    return-void
.end method
