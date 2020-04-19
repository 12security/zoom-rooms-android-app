.class Lus/zoom/zrc/view/adapter/CheckedStringAdapter$1;
.super Ljava/lang/Object;
.source "CheckedStringAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->onBindViewHolder(Lus/zoom/zrc/view/adapter/CheckedStringAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/adapter/CheckedStringAdapter;I)V
    .locals 0

    .line 64
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

    iput p2, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->access$000(Lus/zoom/zrc/view/adapter/CheckedStringAdapter;)Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$1;->this$0:Lus/zoom/zrc/view/adapter/CheckedStringAdapter;

    invoke-static {p1}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter;->access$000(Lus/zoom/zrc/view/adapter/CheckedStringAdapter;)Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lus/zoom/zrc/view/adapter/CheckedStringAdapter$OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method
