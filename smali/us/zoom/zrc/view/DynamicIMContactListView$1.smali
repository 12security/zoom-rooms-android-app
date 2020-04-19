.class Lus/zoom/zrc/view/DynamicIMContactListView$1;
.super Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;
.source "DynamicIMContactListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/DynamicIMContactListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DynamicIMContactListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DynamicIMContactListView;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$1;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-direct {p0}, Lus/zoom/zrc/simpleListener/SimpleIZRPtEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddLegacyRoom(Ljava/lang/String;Z)V
    .locals 0

    .line 79
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$1;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {p1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$000(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDynamicContactListNotification(Ljava/util/ArrayList;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 69
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$1;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {p1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$000(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onDynamicContactsBasicInfoNotification(III)V
    .locals 0

    .line 64
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$1;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {p1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$000(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinishReceivingLegacyRoomList(Z)V
    .locals 0

    .line 59
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$1;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {p1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$000(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onImUpdateContactNotification(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lus/zoom/zrcsdk/model/ZRCContact;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$1;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {p1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$000(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onStartReceivingLegacyRoomList(Z)V
    .locals 0

    .line 54
    iget-object p1, p0, Lus/zoom/zrc/view/DynamicIMContactListView$1;->this$0:Lus/zoom/zrc/view/DynamicIMContactListView;

    invoke-static {p1}, Lus/zoom/zrc/view/DynamicIMContactListView;->access$000(Lus/zoom/zrc/view/DynamicIMContactListView;)Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/view/DynamicIMContactListView$DynamicIMContactAdapter;->notifyDataSetChanged()V

    return-void
.end method
