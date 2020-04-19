.class public Lus/zoom/zrc/view/SipCallContactFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "SipCallContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;,
        Lus/zoom/zrc/view/SipCallContactFragment$ContactsViewHolder;,
        Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_CONTACTS_COUNT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SipCallContactFragment"


# instance fields
.field private contactsListAdapter:Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;

.field private contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

.field private contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

.field private loginSearchListener:Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/SipCallContactFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->startSearchContacts()V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/view/SipCallContactFragment;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->isSearchingKeywordEmpty()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lus/zoom/zrc/view/SipCallContactFragment;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->hasContactSearchResult()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/SipCallContactFragment;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/SipCallContactFragment;->searchContacts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/SipCallContactFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->cancelSearchContacts()V

    return-void
.end method

.method static synthetic access$400(Lus/zoom/zrc/view/SipCallContactFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->onContactListScrollChanged()V

    return-void
.end method

.method static synthetic access$900(Lus/zoom/zrc/view/SipCallContactFragment;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->isSearchingContact()Z

    move-result p0

    return p0
.end method

.method private static canShow()Z
    .locals 2

    .line 52
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getSipService()Lus/zoom/zrcsdk/model/ZRCSipService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSipService;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCloudPBXSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isHideContactList()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private cancelSearchContacts()V
    .locals 2

    .line 238
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    const-string v1, ""

    .line 239
    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setKeyword(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->updateCloudPBXContactsList()V

    .line 245
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->cancelSearch()V

    :cond_0
    return-void
.end method

.method private hasContactSearchResult()Z
    .locals 2

    .line 328
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchResult()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchWebResult()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private insertContactIfMatched(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;",
            ">;",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 276
    invoke-static {p3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p4, :cond_0

    goto :goto_1

    .line 279
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCContact;->getScreenName()Ljava/lang/String;

    move-result-object p2

    .line 281
    new-instance v0, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;-><init>(Lus/zoom/zrc/view/SipCallContactFragment$1;)V

    .line 282
    invoke-static {v0, p2}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->access$602(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    invoke-static {v0, p3}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->access$702(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    invoke-static {v0, p5}, Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;->access$802(Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;Z)Z

    .line 285
    invoke-static {p4}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 286
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p2, :cond_3

    .line 289
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 290
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private isSearchingContact()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSearchingKeywordEmpty()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getSearchText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onContactListScrollChanged()V
    .locals 8

    .line 251
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getSearchText()Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 257
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchContactList()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 259
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getSearchOnCloudContact()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 260
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->isRequestingContacts()Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .line 262
    :cond_1
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchResult()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x14

    if-ge v3, v5, :cond_2

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchWebResult()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 263
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v1, v3, v7, v6, v0}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    .line 264
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchResult()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchWebResult()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 266
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v1, v3, v7, v6, v0}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    .line 267
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    goto :goto_0

    .line 268
    :cond_3
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchResult()I

    move-result v5

    if-ne v3, v5, :cond_4

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getTotalNumberOfContactsInSearchWebResult()I

    move-result v1

    if-ge v4, v1, :cond_4

    .line 269
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object v1

    invoke-virtual {v1, v4, v7, v6, v0}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    .line 270
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private onShowContactList()V
    .locals 1

    .line 160
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->shouldRequestCloudPbxContactListForFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 161
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/SipCallContactFragment;->requestCloudPbxContactList(Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->updateCloudPBXContactsList()V

    return-void
.end method

.method private onUpdateDynamicContactList()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->updateCloudPBXContactsList()V

    return-void
.end method

.method private onUpdateHideContactList()V
    .locals 1

    .line 144
    invoke-static {}, Lus/zoom/zrc/view/SipCallContactFragment;->canShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private onUpdateSipService()V
    .locals 1

    .line 154
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->shouldRequestCloudPbxContactListForFirstScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 155
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/SipCallContactFragment;->requestCloudPbxContactList(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private parseMatchedContactList(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrc/view/SipCallContactFragment$MatchedContact;",
            ">;",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 296
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 300
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getSearchText()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lus/zoom/zrcsdk/model/ZRCContact;

    .line 302
    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCContact;->getCloudPbxInfo()Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 305
    invoke-virtual {v8}, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->getCompanyNumber()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrc/model/Model;->getCloudPBXServiceInfo()Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 307
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCCloudPBXServiceInfo;->getCompanyNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    invoke-virtual {v8}, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->getExtension()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/view/SipCallContactFragment;->insertContactIfMatched(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 315
    :cond_2
    invoke-virtual {v8}, Lus/zoom/zrcsdk/model/ZRCCloudPbxInfo;->getDirectNumber()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v5, v0

    .line 318
    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/view/SipCallContactFragment;->insertContactIfMatched(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 322
    :cond_3
    invoke-virtual {v7}, Lus/zoom/zrcsdk/model/ZRCContact;->getSipPhoneNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lus/zoom/zrc/view/SipCallContactFragment;->insertContactIfMatched(Ljava/util/List;Lus/zoom/zrcsdk/model/ZRCContact;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private requestCloudPbxContactList(Ljava/lang/String;)V
    .locals 3

    .line 171
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2, p1, v1}, Lus/zoom/zrc/model/Model;->requestDynamicallyCloudPbxContactFrom(IILjava/lang/String;Z)V

    return-void
.end method

.method private searchContacts(Ljava/lang/String;)V
    .locals 2

    .line 228
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setKeyword(Ljava/lang/String;)V

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchFinished()V

    .line 234
    :cond_0
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/SipCallContactFragment;->requestCloudPbxContactList(Ljava/lang/String;)V

    return-void
.end method

.method private setupContactListViews()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "deprecation"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iget-object v1, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setSearchBox(Lus/zoom/zrc/login/widget/ZRCListSearchBox;)V

    .line 180
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    new-instance v1, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;

    invoke-virtual {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lus/zoom/zrc/base/widget/GapDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 182
    new-instance v0, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;-><init>(Lus/zoom/zrc/view/SipCallContactFragment;Lus/zoom/zrc/view/SipCallContactFragment$1;)V

    iput-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListAdapter:Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;

    .line 183
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iget-object v1, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListAdapter:Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setDisableHideSearchBox()V

    .line 185
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setDisableCornerBottom()V

    .line 187
    new-instance v0, Lus/zoom/zrc/view/SipCallContactFragment$2;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/SipCallContactFragment$2;-><init>(Lus/zoom/zrc/view/SipCallContactFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->loginSearchListener:Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    new-instance v1, Lus/zoom/zrc/view/SipCallContactFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/SipCallContactFragment$3;-><init>(Lus/zoom/zrc/view/SipCallContactFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    new-instance v1, Lus/zoom/zrc/view/SipCallContactFragment$4;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/SipCallContactFragment$4;-><init>(Lus/zoom/zrc/view/SipCallContactFragment;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method private shouldRequestCloudPbxContactListForFirstScreen()Z
    .locals 1

    .line 167
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->isCloudPBXSupported()Z

    move-result v0

    return v0
.end method

.method private startSearchContacts()V
    .locals 0

    return-void
.end method

.method private updateCloudPBXContactsList()V
    .locals 3

    .line 344
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 346
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/Model;->getDynamicallyCloudPbxContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object v1

    .line 348
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->isSearchingContact()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->isSearchingKeywordEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->hasContactSearchResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchContacts2ArrayList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lus/zoom/zrc/view/SipCallContactFragment;->parseMatchedContactList(Ljava/util/List;Ljava/util/List;)V

    .line 350
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->searchOnCloudContacts2ArrayList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/view/SipCallContactFragment;->parseMatchedContactList(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->contacts2ArrayList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lus/zoom/zrc/view/SipCallContactFragment;->parseMatchedContactList(Ljava/util/List;Ljava/util/List;)V

    .line 355
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListAdapter:Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/view/SipCallContactFragment$ContactsListAdapter;->updateList(Ljava/util/List;)V

    .line 357
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iget-object v1, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    invoke-virtual {v1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->onSearchInput(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    const v1, 0x1030007

    .line 67
    invoke-virtual {p0, v0, v1}, Lus/zoom/zrc/view/SipCallContactFragment;->setStyle(II)V

    .line 68
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateDynamicContactList:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateContactList:Lus/zoom/zrc/base/notification/ModelEvent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 70
    invoke-virtual {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object p1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 77
    sget p3, Lus/zoom/zrcbox/R$layout;->fragment_phone_contact:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 119
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onPause()V

    .line 120
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->cancelSearchContacts()V

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 0

    .line 135
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 137
    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateDynamicContactList:Lus/zoom/zrc/base/notification/ModelEvent;

    if-eq p2, p1, :cond_0

    sget-object p2, Lus/zoom/zrc/base/notification/ModelEvent;->UpdateContactList:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p2, p1, :cond_1

    .line 139
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->onUpdateDynamicContactList()V

    :cond_1
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 126
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->hideContactList:I

    if-ne p1, p2, :cond_0

    .line 127
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->onUpdateHideContactList()V

    goto :goto_0

    .line 128
    :cond_0
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->sipService:I

    if-ne p1, p2, :cond_1

    .line 129
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->onUpdateSipService()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 113
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onResume()V

    .line 114
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->onUpdateSipService()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 99
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 100
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->onStart()V

    .line 101
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    iget-object v1, p0, Lus/zoom/zrc/view/SipCallContactFragment;->loginSearchListener:Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->addListener(Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    iget-object v1, p0, Lus/zoom/zrc/view/SipCallContactFragment;->loginSearchListener:Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/login/widget/ZRCListSearchBox;->removeListener(Lus/zoom/zrc/login/widget/ZRCListSearchBox$LoginSearchListener;)V

    .line 107
    iget-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;->onStop()V

    .line 108
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    sget p2, Lus/zoom/zrcbox/R$id;->tv_left_action:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 84
    sget v0, Lus/zoom/zrcbox/R$id;->search_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    iput-object v0, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsSearchBox:Lus/zoom/zrc/login/widget/ZRCListSearchBox;

    .line 85
    sget v0, Lus/zoom/zrcbox/R$id;->contacts_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    iput-object p1, p0, Lus/zoom/zrc/view/SipCallContactFragment;->contactsListView:Lus/zoom/zrc/login/widget/ZRCRecyclerListView;

    .line 87
    new-instance p1, Lus/zoom/zrc/view/SipCallContactFragment$1;

    invoke-direct {p1, p0}, Lus/zoom/zrc/view/SipCallContactFragment$1;-><init>(Lus/zoom/zrc/view/SipCallContactFragment;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->setupContactListViews()V

    .line 94
    invoke-direct {p0}, Lus/zoom/zrc/view/SipCallContactFragment;->onShowContactList()V

    return-void
.end method
