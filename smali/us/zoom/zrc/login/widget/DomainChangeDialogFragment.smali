.class public Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "DomainChangeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_TYPE_CUSTOM_INPUT:I = 0x1

.field private static final DIALOG_TYPE_DOMAIN_LIST:I = 0x0

.field private static final DOMAIN_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRODUCTION_DOMAIN:Ljava/lang/String; = "https://zoom.us"

.field private static currentDomain:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private defaultIndex:I

.field private dialogType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    .line 44
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    const-string v1, "https://zoom.us"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    const-string v1, "https://zoomdev.us"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    const-string v1, "https://deva.zoomdev.us"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    const-string v1, "https://devb.zoomdev.us"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    const-string v1, "https://dev-integration.zoomdev.us"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    const-string v1, "https://deva-ca.zoomdev.us"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    const-string v1, "https://deva2.zoomdev.us"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    const-string v1, "https://devep.zoomdev.us"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    const-string v1, "Other Domain"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)I
    .locals 0

    .line 37
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->getCustomDomainIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->showCustomInputDialog()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .line 37
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->saveResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)I
    .locals 0

    .line 37
    iget p0, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->defaultIndex:I

    return p0
.end method

.method private buildCustomInputDialog()Landroid/app/Dialog;
    .locals 5

    .line 145
    iget-object v0, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 147
    sget v1, Lus/zoom/zrcbox/R$layout;->dialog_custom_input_domain:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    sget v1, Lus/zoom/zrcbox/R$id;->input_domain:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 149
    sget-object v2, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->currentDomain:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v3, ".zoom.us"

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const-string v3, "zoom.us"

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :cond_0
    if-le v3, v4, :cond_1

    .line 155
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 160
    :goto_0
    new-instance v2, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$2;

    invoke-direct {v2, p0, v1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$2;-><init>(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 166
    new-instance v2, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    iget-object v3, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Change domain"

    .line 167
    invoke-virtual {v2, v3}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setTitle(Ljava/lang/String;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 168
    invoke-virtual {v2, v0}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setView(Landroid/view/View;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 169
    sget v0, Lus/zoom/zrcbox/R$string;->ok:I

    new-instance v3, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$3;

    invoke-direct {v3, p0, v1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$3;-><init>(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v0, v3}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 183
    sget v0, Lus/zoom/zrcbox/R$string;->cancel:I

    new-instance v3, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$4;

    invoke-direct {v3, p0, v1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$4;-><init>(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v0, v3}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;

    .line 189
    invoke-virtual {v2}, Lus/zoom/androidlib/widget/ZMAlertDialog$Builder;->create()Lus/zoom/androidlib/widget/ZMAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private buildDomainListDialog()Landroid/app/Dialog;
    .locals 4

    .line 121
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->getDefaultDomainIndex()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->defaultIndex:I

    .line 122
    iget v0, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->defaultIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 123
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    sget-object v2, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->currentDomain:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    iput v1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->defaultIndex:I

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    const-string v0, "https://zoom.us"

    .line 125
    sget-object v2, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    iget v0, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->defaultIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->defaultIndex:I

    .line 130
    :cond_1
    :goto_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->context:Landroid/content/Context;

    sget v2, Lus/zoom/zrcbox/R$style;->ZRCDomainChangeDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 131
    new-instance v1, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$DomainListAdapter;-><init>(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$1;)V

    iget v2, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->defaultIndex:I

    new-instance v3, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$1;

    invoke-direct {v3, p0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment$1;-><init>(Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private getCustomDomainIndex()I
    .locals 1

    .line 117
    sget-object v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getDefaultDomainIndex()I
    .locals 3

    const/4 v0, 0x0

    .line 107
    :goto_0
    sget-object v1, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 108
    sget-object v1, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->currentDomain:Ljava/lang/String;

    sget-object v2, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->DOMAIN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lus/zoom/zrcsdk/util/StringUtil;->isSameString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private saveResult(Ljava/lang/String;)V
    .locals 2

    .line 193
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->changeDomain(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lus/zoom/zrc/ZRCApplication;->getInstance()Lus/zoom/zrc/ZRCApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-static {p0, v0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    return-void
.end method

.method public static show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V
    .locals 2

    .line 69
    const-class v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->getFragment(Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->dismissDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    .line 75
    :cond_0
    new-instance v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;

    invoke-direct {v0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;-><init>()V

    .line 76
    iput p1, v0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->dialogType:I

    .line 77
    invoke-virtual {p0, v0}, Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;->showDialogFragment(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method private showCustomInputDialog()V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 202
    instance-of v2, v0, Lus/zoom/zrc/base/app/ZRCFragment;

    if-eqz v2, :cond_0

    .line 203
    check-cast v0, Lus/zoom/zrc/base/app/ZRCFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_0
    instance-of v2, v0, Lus/zoom/zrc/base/app/ZRCDialogFragment;

    if-eqz v2, :cond_1

    .line 205
    check-cast v0, Lus/zoom/zrc/base/app/ZRCDialogFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_1
    instance-of v0, v1, Lus/zoom/zrc/ZRCActivity;

    if-eqz v0, :cond_2

    .line 207
    check-cast v1, Lus/zoom/zrc/ZRCActivity;

    invoke-virtual {v1}, Lus/zoom/zrc/ZRCActivity;->getFragmentManagerHelper()Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 211
    invoke-static {v0, v1}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->show(Lus/zoom/zrc/base/app/ZRCFragmentManagerHelper;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    iput-object p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget-object p1, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->currentDomain:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 90
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/Model;->webDomain()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->currentDomain:Ljava/lang/String;

    .line 93
    :cond_0
    invoke-virtual {p0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->setDisableImmersiveModeForPolycomTrio()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 99
    iget p1, p0, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->dialogType:I

    if-nez p1, :cond_0

    .line 100
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->buildDomainListDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    invoke-direct {p0}, Lus/zoom/zrc/login/widget/DomainChangeDialogFragment;->buildCustomInputDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
