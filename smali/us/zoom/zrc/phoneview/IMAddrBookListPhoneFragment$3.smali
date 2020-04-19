.class Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;
.super Ljava/lang/Object;
.source "IMAddrBookListPhoneFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/ZRCSearchView$ZRCSearchViewSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSearch()V
    .locals 3

    .line 174
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$000(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/ZRCSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$900(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$000(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/ZRCSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/view/ZRCSearchView;->getSearch_content()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/androidlib/util/UIUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$400(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$600(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/DynamicImContactSearchListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setVisibility(I)V

    .line 178
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getZrcFeatureListInfo()Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCFeatureListInfo;->isSupportsLoadingContactsDynamically()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$700(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/DynamicIMContactListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/DynamicIMContactListView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$200(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$200(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$700(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/DynamicIMContactListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->setVisibility(I)V

    .line 185
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchFinished()V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$500(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
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

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$600(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/DynamicImContactSearchListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$700(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/DynamicIMContactListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/DynamicIMContactListView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$600(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/DynamicImContactSearchListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$600(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/DynamicImContactSearchListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/DynamicImContactSearchListView;->setKeyWord(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$700(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;)Lus/zoom/zrc/view/DynamicIMContactListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/view/DynamicIMContactListView;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$800(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;Ljava/lang/String;)V

    .line 169
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment$3;->this$0:Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;->access$502(Lus/zoom/zrc/phoneview/IMAddrBookListPhoneFragment;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
