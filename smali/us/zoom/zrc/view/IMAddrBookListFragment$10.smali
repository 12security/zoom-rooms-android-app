.class Lus/zoom/zrc/view/IMAddrBookListFragment$10;
.super Ljava/lang/Object;
.source "IMAddrBookListFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/IMAddrBookListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/IMAddrBookListFragment;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$10;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$10;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$600(Lus/zoom/zrc/view/IMAddrBookListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 349
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsLoadingContactsDynamically()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$10;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$700(Lus/zoom/zrc/view/IMAddrBookListFragment;)Lus/zoom/zrc/view/DynamicImContactSearchListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setVisibility(I)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$10;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$700(Lus/zoom/zrc/view/IMAddrBookListFragment;)Lus/zoom/zrc/view/DynamicImContactSearchListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$10;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$700(Lus/zoom/zrc/view/IMAddrBookListFragment;)Lus/zoom/zrc/view/DynamicImContactSearchListView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setKeyWord(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$10;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$800(Lus/zoom/zrc/view/IMAddrBookListFragment;Landroid/text/Editable;)V

    .line 360
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/IMAddrBookListFragment$10;->this$0:Lus/zoom/zrc/view/IMAddrBookListFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lus/zoom/zrc/view/IMAddrBookListFragment;->access$602(Lus/zoom/zrc/view/IMAddrBookListFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
