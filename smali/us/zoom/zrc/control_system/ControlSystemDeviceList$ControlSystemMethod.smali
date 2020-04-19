.class Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;
.super Ljava/lang/Object;
.source "ControlSystemDeviceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/control_system/ControlSystemDeviceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControlSystemMethod"
.end annotation


# instance fields
.field private icon:Ljava/lang/String;

.field isHidden:Z

.field isMain:Z

.field private methodId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;


# direct methods
.method constructor <init>(Lus/zoom/zrc/control_system/ControlSystemDeviceList;Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;Ljava/lang/String;)V
    .locals 3

    .line 128
    iput-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->methodId:Ljava/lang/String;

    .line 130
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->icon:Ljava/lang/String;

    .line 131
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->name:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->params:Ljava/util/List;

    .line 133
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isMain()Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->isMain:Z

    .line 134
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->isHidden()Z

    move-result v0

    iput-boolean v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->isHidden:Z

    .line 136
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 137
    new-instance v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;

    invoke-direct {v0}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;-><init>()V

    .line 138
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->methodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->setId(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getIcon()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->setIcon(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->name:Ljava/lang/String;

    invoke-static {p2}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 142
    iget-object p2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->methodId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;->setName(Ljava/lang/String;)V

    .line 146
    :goto_0
    new-instance p2, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;

    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->methodId:Ljava/lang/String;

    invoke-direct {p2, p1, v0, p3, v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;-><init>(Lus/zoom/zrc/control_system/ControlSystemDeviceList;Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->params:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    :cond_1
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 149
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getParams()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/controlsystem/ZRCSMethod;->getParams()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;

    .line 151
    new-instance v1, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;

    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->methodId:Ljava/lang/String;

    invoke-direct {v1, p1, v0, p3, v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;-><init>(Lus/zoom/zrc/control_system/ControlSystemDeviceList;Lus/zoom/zrcsdk/model/controlsystem/ZRCSParam;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->params:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method buildView()Landroid/view/View;
    .locals 6

    .line 159
    new-instance v0, Lus/zoom/zrc/control_system/ControlSystemRow;

    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/zoom/zrc/control_system/ControlSystemRow;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lus/zoom/zrc/control_system/ControlSystemRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v1

    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->icon:Ljava/lang/String;

    invoke-static {v1, v2}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v2, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v2

    invoke-static {v2, v1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildIcon(Lus/zoom/zrc/control_system/ControlSystemContext;I)Landroid/widget/ImageView;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lus/zoom/zrc/control_system/ControlSystemRow;->addLeft(Landroid/view/View;)V

    .line 166
    :cond_0
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->name:Ljava/lang/String;

    invoke-static {v1}, Lus/zoom/zrcsdk/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 167
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v1

    iget-object v3, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->name:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v4}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrcs_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v1, v3, v4, v2}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildName(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/control_system/ControlSystemRow;->addLeft(Landroid/view/View;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v1}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v1

    iget-object v3, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->methodId:Ljava/lang/String;

    iget-object v4, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->this$0:Lus/zoom/zrc/control_system/ControlSystemDeviceList;

    invoke-static {v4}, Lus/zoom/zrc/control_system/ControlSystemDeviceList;->access$000(Lus/zoom/zrc/control_system/ControlSystemDeviceList;)Lus/zoom/zrc/control_system/ControlSystemContext;

    move-result-object v4

    invoke-virtual {v4}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrcs_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v1, v3, v4, v2}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildName(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/control_system/ControlSystemRow;->addLeft(Landroid/view/View;)V

    .line 171
    :goto_0
    iget-object v1, p0, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemMethod;->params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;

    .line 172
    invoke-virtual {v2}, Lus/zoom/zrc/control_system/ControlSystemDeviceList$ControlSystemParam;->buildView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lus/zoom/zrc/control_system/ControlSystemRow;->addRight(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method
