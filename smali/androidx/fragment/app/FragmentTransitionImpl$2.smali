.class Landroidx/fragment/app/FragmentTransitionImpl$2;
.super Ljava/lang/Object;
.source "FragmentTransitionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransitionImpl;->setNameOverridesOrdered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$nameOverrides:Ljava/util/Map;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionImpl;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 0

    .line 233
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransitionImpl$2;->this$0:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransitionImpl$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransitionImpl$2;->val$nameOverrides:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 236
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransitionImpl$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 238
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransitionImpl$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 239
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 241
    iget-object v4, p0, Landroidx/fragment/app/FragmentTransitionImpl$2;->val$nameOverrides:Ljava/util/Map;

    invoke-static {v4, v3}, Landroidx/fragment/app/FragmentTransitionImpl;->findKeyForValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
