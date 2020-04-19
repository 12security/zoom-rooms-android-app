.class Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;
.super Ljava/lang/Object;
.source "ControlSystemDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/control_system/ControlSystemDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlSystemParam"
.end annotation


# instance fields
.field private deviceId:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private methodId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private paramId:Ljava/lang/String;

.field final synthetic this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lus/zoom/zrc/control_system/ControlSystemDeviceList;Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->paramId:Ljava/lang/String;

    .line 188
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->name:Ljava/lang/String;

    .line 189
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->value:Ljava/lang/String;

    .line 190
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->getIcon()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->icon:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->deviceId:Ljava/lang/String;

    .line 192
    iput-object p4, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->methodId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;)Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;)Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->methodId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;)Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->paramId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;)Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->value:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method buildView()Landroid/view/View;
    .locals 2

    .line 198
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v0}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->icon:Ljava/lang/String;

    invoke-static {v0, v1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v1

    invoke-static {v1, v0}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildImageParam(Lus/zoom/zrc/control_system/ControlSystemContext;I)Landroid/widget/ImageView;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->name:Ljava/lang/String;

    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->paramId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v0}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildTextParam(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v0}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->methodId:Ljava/lang/String;

    invoke-static {v0, v1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildTextParam(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 212
    :goto_0
    new-instance v1, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam$1;-><init>(Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
