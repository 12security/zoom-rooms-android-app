.class Lus/zoom/zrc/view/ZRCPinShareScreenView$2;
.super Ljava/lang/Object;
.source "ZRCPinShareScreenView.java"

# interfaces
.implements Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCPinShareScreenView;->initSharingList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$2;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lus/zoom/zrc/view/adapter/ChangeContentSharingListAdapter$ViewHolder;II)V
    .locals 3

    .line 166
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$2;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$200(Lus/zoom/zrc/view/ZRCPinShareScreenView;)Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/ZRCPinUserManager;->getShareSourceIdByUserId(I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const-string p1, "Share source id not found, pin screenIndex=%d, pin userId=%d"

    const/4 p3, 0x2

    .line 168
    new-array p3, p3, [Ljava/lang/Object;

    iget-object v2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$2;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {v2}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$300(Lus/zoom/zrc/view/ZRCPinShareScreenView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 172
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$2;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p2}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$400(Lus/zoom/zrc/view/ZRCPinShareScreenView;)Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 176
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$2;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p2}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$400(Lus/zoom/zrc/view/ZRCPinShareScreenView;)Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinStatusOfScreenType()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    const-string p1, "PinStatusOfScreenType not found! Type is %d"

    .line 185
    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lus/zoom/zrcsdk/util/ZRCLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :pswitch_0
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$2;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p2, p1, p3}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$600(Lus/zoom/zrc/view/ZRCPinShareScreenView;II)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$2;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p2, p1, p3}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$500(Lus/zoom/zrc/view/ZRCPinShareScreenView;II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
