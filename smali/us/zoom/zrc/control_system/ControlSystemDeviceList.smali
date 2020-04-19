.class Lus/zoom/zrc/control_system/ControlSystemDeviceList;
.super Ljava/lang/Object;
.source "ControlSystemDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;,
        Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;,
        Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;
    }
.end annotation


# instance fields
.field private context:Lus/zoom/zrc/control_system/ControlSystemContext;

.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lus/zoom/zrc/control_system/ControlSystemContext;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->devices:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->context:Lus/zoom/zrc/control_system/ControlSystemContext;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;
    .locals 0

    .line 20
    iget-object p0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->context:Lus/zoom/zrc/control_system/ControlSystemContext;

    return-object p0
.end method


# virtual methods
.method loadToContainer(Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;Landroid/view/ViewGroup;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;

    .line 32
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->devices:Ljava/util/List;

    new-instance v2, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;-><init>(Lus/zoom/zrc/control_system/ControlSystemDeviceList;Lus/zoom/zrcsdk/model/controlsystem/ZRCSDeviceInfo;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->devices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;

    .line 35
    invoke-virtual {v0}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemDevice;->buildView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    return-void
.end method
