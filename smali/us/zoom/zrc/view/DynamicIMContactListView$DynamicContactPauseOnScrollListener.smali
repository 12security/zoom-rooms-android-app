.class Lus/zoom/zrc/view/DynamicIMContactListView$DynamicContactPauseOnScrollListener;
.super Lus/zoom/zrc/utils/PauseOnScrollListener;
.source "DynamicIMContactListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/DynamicIMContactListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicContactPauseOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DynamicIMContactListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DynamicIMContactListView;Lus/zoom/zrc/utils/AvatarLoader;ZZ)V
    .locals 0

    .line 297
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicContactPauseOnScrollListener;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    .line 298
    invoke-direct {p0, p2, p3, p4}, Lus/zoom/zrc/utils/PauseOnScrollListener;-><init>(Lus/zoom/zrc/utils/AvatarLoader;ZZ)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Lus/zoom/zrc/utils/PauseOnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 309
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    add-int/2addr p3, p2

    if-ne p3, p4, :cond_2

    .line 312
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicContactPauseOnScrollListener;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {p1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object p3, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicContactPauseOnScrollListener;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {p3}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getNumberOfContacts()I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 313
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->isRequestingContacts()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 315
    :cond_1
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    iget-object p3, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicContactPauseOnScrollListener;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {p3}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$300(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->getContactList()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    const/16 p4, 0x14

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, p3, p4, v0, v1}, Lus/zoom/zrcsdk/PTApp;->requestContactsDynamicallyFrom(IIZLjava/lang/String;)V

    .line 316
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getDynamicContactList()Lus/zoom/zrcsdk/model/ZRCDynamicContactList;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lus/zoom/zrcsdk/model/ZRCDynamicContactList;->setRequestingContacts(Z)V

    .line 320
    :cond_2
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicContactPauseOnScrollListener;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {p1, p2}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$700(Lus/zoom/zrc/view/DynamicIMContactListView;I)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 303
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/utils/PauseOnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method
