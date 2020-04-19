.class public Lus/zoom/zrc/view/AdvancePtzCameraSettings;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "AdvancePtzCameraSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

.field private cameraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private com_device_layout:Landroid/widget/LinearLayout;

.field private deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

.field private mAssignSerialPort:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

.field private mAssignSerialPortCanClick:Z

.field private mComCameraDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPortCanClick:Z

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/AdvancePtzCameraSettings;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->onCheckedChangedForAssignSerialPort(Z)V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;
    .locals 0

    .line 37
    iget-object p0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)Lus/zoom/zrc/base/widget/ZRCSwitchButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPort:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->com_device_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private fitScreen()V
    .locals 4

    .line 193
    invoke-virtual {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "requestLargeLayout dialog has not init yet!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 199
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "requestLargeLayout window has not init yet!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 206
    invoke-virtual {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 207
    invoke-virtual {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x3f333333    # 0.7f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const v3, 0x3f666666    # 0.9f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_2
    const v3, 0x3f7ae148    # 0.98f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    return-void
.end method

.method private onCheckedChangedForAssignSerialPort(Z)V
    .locals 4

    .line 112
    iget-boolean v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPortCanClick:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 114
    iget-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->com_device_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iput-boolean v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPortCanClick:Z

    .line 116
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    iget-object v1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3, v0}, Lus/zoom/zrcsdk/PTApp;->selectComCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->setPtzComId(I)V

    .line 119
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    if-eqz p1, :cond_2

    .line 120
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getPtzComId()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->setPresentPtzComId(I)V

    .line 121
    iget-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getComDeviceList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 125
    iget-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->com_device_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    if-eqz p1, :cond_2

    .line 127
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getPtzComId()I

    move-result p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->setPresentPtzComId(I)V

    .line 128
    iget-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance p1, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-virtual {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 57
    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 58
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-le p3, v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    const/high16 v0, 0x4000000

    .line 61
    invoke-virtual {p3, v0}, Landroid/view/Window;->addFlags(I)V

    .line 63
    :cond_0
    sget p3, Lus/zoom/zrcbox/R$layout;->advanced_ptz_camera_settings:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    sget p2, Lus/zoom/zrcbox/R$id;->sc_done_bt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lus/zoom/zrc/view/ZRCImageView;

    .line 65
    sget p3, Lus/zoom/zrcbox/R$id;->com_device_layout:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->com_device_layout:Landroid/widget/LinearLayout;

    .line 66
    sget p3, Lus/zoom/zrcbox/R$id;->source_list:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    .line 67
    sget v0, Lus/zoom/zrcbox/R$id;->assign_serial_port:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    iput-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPort:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    .line 68
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPort:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v1, Lus/zoom/zrc/view/AdvancePtzCameraSettings$1;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings$1;-><init>(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setOnSwitchChangedListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPort:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    new-instance v1, Lus/zoom/zrc/view/AdvancePtzCameraSettings$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings$2;-><init>(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->post(Ljava/lang/Runnable;)Z

    .line 88
    invoke-virtual {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lus/zoom/zrc/view/AdvancePtzCameraSettings$3;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings$3;-><init>(Lus/zoom/zrc/view/AdvancePtzCameraSettings;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_1
    iget-object p2, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mComCameraDevices:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 98
    iget-object p2, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mComCameraDevices:Ljava/util/List;

    invoke-virtual {p2, v0}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object p2, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getSettingsDeviceInfo()Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCSettingsDeviceInfo;->getComDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v0}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->setList(Ljava/util/List;)V

    .line 103
    :goto_0
    iget-object p2, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    if-eqz p2, :cond_3

    .line 104
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getPtzComId()I

    move-result p2

    invoke-virtual {v0, p2}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->setPresentPtzComId(I)V

    .line 106
    :cond_3
    iget-object p2, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    invoke-virtual {p3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 179
    iget-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;

    .line 180
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p2

    iget-object p3, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getName()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {p5}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getDeviceAlias()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->getCom_id()I

    move-result v0

    invoke-virtual {p2, p3, p4, p5, v0}, Lus/zoom/zrcsdk/PTApp;->selectComCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 181
    iget-object p2, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;->getCom_id()I

    move-result p1

    invoke-virtual {p2, p1}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->setPresentPtzComId(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 187
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 188
    invoke-direct {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->fitScreen()V

    return-void
.end method

.method public setCameraList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    .line 168
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iput-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    return-void

    .line 173
    :cond_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->dismiss()V

    :cond_2
    return-void
.end method

.method public setComCameraList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lus/zoom/zrcsdk/model/ZRCComDeviceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "comDeviceList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iput-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mComCameraDevices:Ljava/util/List;

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPortCanClick:Z

    .line 140
    iget-object v1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    if-eqz v1, :cond_2

    .line 141
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x4

    if-gtz v1, :cond_0

    .line 142
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPort:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 143
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->com_device_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getPtzComId()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 146
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPort:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v0, v2}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->com_device_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->mAssignSerialPort:Lus/zoom/zrc/base/widget/ZRCSwitchButton;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/widget/ZRCSwitchButton;->setCheckedOnlyForUI(Z)V

    .line 150
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->com_device_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    :goto_0
    iget-object v0, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->setList(Ljava/util/List;)V

    .line 154
    iget-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->adapter:Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;

    invoke-virtual {p1}, Lus/zoom/zrc/view/adapter/ComDeviceSourceAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public setPresentDeviceInfo(Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;)V
    .locals 3

    .line 160
    iput-object p1, p0, Lus/zoom/zrc/view/AdvancePtzCameraSettings;->deviceInfo:Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;

    const-string v0, ""

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPtzComId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCMediaDeviceInfo;->getPtzComId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
