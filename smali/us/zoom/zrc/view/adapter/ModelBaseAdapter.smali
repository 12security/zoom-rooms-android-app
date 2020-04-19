.class public abstract Lus/zoom/zrc/view/adapter/ModelBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "ModelBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ModelBaseAdapter;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lus/zoom/zrc/view/adapter/ModelBaseAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ModelBaseAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lus/zoom/zrc/view/adapter/ModelBaseAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public refreshList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lus/zoom/zrc/view/adapter/ModelBaseAdapter;->list:Ljava/util/List;

    .line 15
    invoke-virtual {p0}, Lus/zoom/zrc/view/adapter/ModelBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
