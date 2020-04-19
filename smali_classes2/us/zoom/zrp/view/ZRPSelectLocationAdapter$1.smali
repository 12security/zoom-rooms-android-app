.class Lus/zoom/zrp/view/ZRPSelectLocationAdapter$1;
.super Ljava/lang/Object;
.source "ZRPSelectLocationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->onBindViewHolder(Lus/zoom/zrp/view/ZRPSelectLocationAdapter$SelectLocationViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

.field final synthetic val$locationItem:Lus/zoom/zrcsdk/model/ZRCLocationTree;


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPSelectLocationAdapter;Lus/zoom/zrcsdk/model/ZRCLocationTree;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    iput-object p2, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$1;->val$locationItem:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 161
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->access$100(Lus/zoom/zrp/view/ZRPSelectLocationAdapter;)Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPSelectLocationAdapter;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter;->access$100(Lus/zoom/zrp/view/ZRPSelectLocationAdapter;)Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$1;->val$locationItem:Lus/zoom/zrcsdk/model/ZRCLocationTree;

    invoke-interface {p1, v0}, Lus/zoom/zrp/view/ZRPSelectLocationAdapter$OnLocationItemClickListener;->onLocationItemClick(Lus/zoom/zrcsdk/model/ZRCLocationTree;)V

    :cond_0
    return-void
.end method
