.class Lus/zoom/zrc/view/adapter/CallHistoryAdapter$1;
.super Ljava/lang/Object;
.source "CallHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

.field final synthetic val$holder:Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;

.field final synthetic val$itemData:Lus/zoom/zrcsdk/model/ICallHistoryItem;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/CallHistoryAdapter;Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;Lus/zoom/zrcsdk/model/ICallHistoryItem;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    iput-object p2, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$1;->val$holder:Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;

    iput-object p3, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$1;->val$itemData:Lus/zoom/zrcsdk/model/ICallHistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 97
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->access$000(Lus/zoom/zrc/view/adapter/CallHistoryAdapter;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/CallHistoryAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter;->access$000(Lus/zoom/zrc/view/adapter/CallHistoryAdapter;)Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$1;->val$holder:Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;

    iget-object v1, p0, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$1;->val$itemData:Lus/zoom/zrcsdk/model/ICallHistoryItem;

    invoke-interface {p1, v0, v1}, Lus/zoom/zrc/view/adapter/CallHistoryAdapter$OnItemClickListener;->onItemClick(Lus/zoom/zrc/view/adapter/CallHistoryAdapter$ViewHolder;Lus/zoom/zrcsdk/model/ICallHistoryItem;)V

    :cond_0
    return-void
.end method
