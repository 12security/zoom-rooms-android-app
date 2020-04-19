.class Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;
.super Ljava/lang/Object;
.source "ControlSystemDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/control_system/ControlSystemDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlSystemDevice"
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private mainMethod:Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;

.field private methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private status:I

.field final synthetic this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;


# direct methods
.method constructor <init>(Lus/zoom/zrc/control_system/ControlSystemDeviceList;Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;)V
    .locals 3

    .line 47
    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->deviceId:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->icon:Ljava/lang/String;

    .line 50
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->mainMethod:Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->methods:Ljava/util/List;

    .line 53
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getStatus()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->status:I

    .line 55
    iget v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getMethods()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;->getMethods()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;

    .line 59
    new-instance v1, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;

    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->deviceId:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;-><init>(Lus/zoom/zrc/control_system/ControlSystemDeviceList;Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;Ljava/lang/String;)V

    .line 60
    iget-boolean v0, v1, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->isHidden:Z

    if-nez v0, :cond_1

    .line 61
    iget-boolean v0, v1, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->isMain:Z

    if-eqz v0, :cond_2

    .line 62
    iput-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->mainMethod:Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->methods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method buildView()Landroid/view/View;
    .locals 7

    .line 76
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v0}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildDevice(Lus/zoom/zrc/control_system/ControlSystemContext;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->icon:Ljava/lang/String;

    invoke-static {v1, v2}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v2

    invoke-static {v2, v1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildIcon(Lus/zoom/zrc/control_system/ControlSystemContext;I)Landroid/widget/ImageView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 84
    :goto_0
    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->name:Ljava/lang/String;

    invoke-static {v2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 85
    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v2

    iget-object v4, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->name:Ljava/lang/String;

    iget-object v5, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v5}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$dimen;->zrcs_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v2, v4, v5, v3}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildName(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    goto :goto_1

    .line 87
    :cond_1
    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v2

    iget-object v4, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->deviceId:Ljava/lang/String;

    iget-object v5, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v5}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v5

    invoke-virtual {v5}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$dimen;->zrcs_text_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v2, v4, v5, v3}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildName(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 90
    :goto_1
    iget v4, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->status:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 91
    iget-object v4, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v4}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildLineNotConnectedHead(Lus/zoom/zrc/control_system/ControlSystemContext;Landroid/widget/ImageView;Landroid/widget/TextView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    iget v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->status:I

    if-nez v1, :cond_2

    .line 93
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->deviceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildLineDisconnected(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_2
    if-ne v1, v3, :cond_7

    .line 95
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildLineConnecting(Lus/zoom/zrc/control_system/ControlSystemContext;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 98
    :cond_3
    new-instance v3, Lus/zoom/zrc/control_system/ControlSystemRow;

    iget-object v4, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v4}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v4

    invoke-direct {v3, v4}, Lus/zoom/zrc/control_system/ControlSystemRow;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lus/zoom/zrc/control_system/ControlSystemRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_4

    .line 101
    invoke-virtual {v3, v1}, Lus/zoom/zrc/control_system/ControlSystemRow;->addLeft(Landroid/view/View;)V

    .line 102
    :cond_4
    invoke-virtual {v3, v2}, Lus/zoom/zrc/control_system/ControlSystemRow;->addLeft(Landroid/view/View;)V

    .line 103
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->mainMethod:Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;

    if-eqz v1, :cond_5

    .line 104
    iget-object v1, v1, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;

    .line 105
    invoke-virtual {v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->buildView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Lus/zoom/zrc/control_system/ControlSystemRow;->addRight(Landroid/view/View;)V

    goto :goto_2

    .line 108
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->methods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 110
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildDeviceHeadBottomLine(Lus/zoom/zrc/control_system/ControlSystemContext;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    :cond_6
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->methods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;

    .line 113
    invoke-virtual {v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->buildView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_7
    :goto_4
    return-object v0
.end method
