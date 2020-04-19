.class Lus/zoom/androidlib/widget/ZMAlertHolder;
.super Ljava/lang/Object;
.source "ZMAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;
    }
.end annotation


# static fields
.field public static final ZM_CONTENT_TYPE_ITEMS:I = 0x3

.field public static final ZM_CONTENT_TYPE_LIST:I = 0x2

.field public static final ZM_CONTENT_TYPE_MSG:I = 0x1

.field public static final ZM_CONTENT_TYPE_MULTIITEMS:I = 0x4

.field public static final ZM_CONTENT_TYPE_NONE:I = 0x0

.field public static final ZM_CONTENT_TYPE_VIEW:I = 0x5


# instance fields
.field private adater:Landroid/widget/ListAdapter;

.field private cancelable:Z

.field private checkIndex:I

.field private checkedIndexs:[I

.field private context:Landroid/content/Context;

.field private dialog:Lus/zoom/androidlib/widget/ZMAlertDialog;

.field private dismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private isHideBottomGap:Z

.field private isMultiChoice:Z

.field private isSingleChoice:Z

.field private items:[Ljava/lang/CharSequence;

.field private listDividerHeight:I

.field private listListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContentPadding:Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;

.field private mEnableAutoClickBtnDismiss:Z

.field private mNegativeButtonText:Ljava/lang/String;

.field private mNeutralButtonText:Ljava/lang/String;

.field private mPositiveButtonText:Ljava/lang/String;

.field private mTitleView:Landroid/view/View;

.field private mView:Landroid/view/View;

.field private mViewSpacingSpecified:Z

.field private msg:Ljava/lang/String;

.field private negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private smallTitleMutlilineStyle:Z

.field private theme:I

.field private title:Ljava/lang/String;

.field private titleFontSize:F

.field private titleTxtColor:I

.field private type:I

.field private verticalOptionStyle:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 821
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->verticalOptionStyle:Z

    .line 822
    iput-boolean v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->smallTitleMutlilineStyle:Z

    const/4 v1, 0x0

    .line 823
    iput v1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->titleFontSize:F

    .line 824
    iput v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->titleTxtColor:I

    const/4 v1, -0x1

    .line 850
    iput v1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->checkIndex:I

    .line 852
    iput v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->listDividerHeight:I

    .line 858
    sget v1, Lus/zoom/androidlib/R$style;->ZMDialog_Material:I

    iput v1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->theme:I

    const/4 v1, 0x1

    .line 862
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mEnableAutoClickBtnDismiss:Z

    .line 908
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->context:Landroid/content/Context;

    .line 909
    iput-boolean v1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->cancelable:Z

    .line 910
    iput v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->type:I

    return-void
.end method


# virtual methods
.method public getAdater()Landroid/widget/ListAdapter;
    .locals 1

    .line 1023
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->adater:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckIndex()I
    .locals 1

    .line 1072
    iget v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->checkIndex:I

    return v0
.end method

.method public getCheckedIndexs()[I
    .locals 1

    .line 1080
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->checkedIndexs:[I

    return-object v0
.end method

.method public getContentPadding()Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;
    .locals 1

    .line 1145
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mContentPadding:Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 926
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDialog()Lus/zoom/androidlib/widget/ZMAlertDialog;
    .locals 1

    .line 1011
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->dialog:Lus/zoom/androidlib/widget/ZMAlertDialog;

    return-object v0
.end method

.method public getDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .line 1044
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 991
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItems()[Ljava/lang/CharSequence;
    .locals 1

    .line 1052
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->items:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getListDividerHeight()I
    .locals 1

    .line 1129
    iget v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->listDividerHeight:I

    return v0
.end method

.method public getListListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 1036
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->listListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 966
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeButtonListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 869
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getNeutralButtonListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 887
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getPositiveButtonListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 878
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .line 1113
    iget v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->theme:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 979
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleFontSize()F
    .locals 1

    .line 950
    iget v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->titleFontSize:F

    return v0
.end method

.method public getTitleTxtColor()I
    .locals 1

    .line 958
    iget v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->titleTxtColor:I

    return v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 1121
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1015
    iget v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->type:I

    return v0
.end method

.method public getmNegativeButtonText()Ljava/lang/String;
    .locals 1

    .line 922
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mNegativeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getmNeutralButtonText()Ljava/lang/String;
    .locals 1

    .line 918
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mNeutralButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getmPositiveButtonText()Ljava/lang/String;
    .locals 1

    .line 914
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mPositiveButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getmView()Landroid/view/View;
    .locals 1

    .line 1096
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isCancelable()Z
    .locals 1

    .line 1003
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->cancelable:Z

    return v0
.end method

.method public isEnableAutoClickBtnDismiss()Z
    .locals 1

    .line 1149
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mEnableAutoClickBtnDismiss:Z

    return v0
.end method

.method public isHideBottomGap()Z
    .locals 1

    .line 1064
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->isHideBottomGap:Z

    return v0
.end method

.method public isMultiChoice()Z
    .locals 1

    .line 1056
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->isMultiChoice:Z

    return v0
.end method

.method public isSingleChoice()Z
    .locals 1

    .line 1092
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->isSingleChoice:Z

    return v0
.end method

.method public isSmallTitleMutlilineStyle()Z
    .locals 1

    .line 942
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->smallTitleMutlilineStyle:Z

    return v0
.end method

.method public isVerticalOptionStyle()Z
    .locals 1

    .line 934
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->verticalOptionStyle:Z

    return v0
.end method

.method public ismViewSpacingSpecified()Z
    .locals 1

    .line 1105
    iget-boolean v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mViewSpacingSpecified:Z

    return v0
.end method

.method public setAdater(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->adater:Landroid/widget/ListAdapter;

    const/4 p1, 0x2

    .line 1028
    iput p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->type:I

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 999
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->cancelable:Z

    return-void
.end method

.method public setCheckIndex(I)V
    .locals 0

    .line 1076
    iput p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->checkIndex:I

    return-void
.end method

.method public setCheckedIndexs([I)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->checkedIndexs:[I

    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1

    .line 1137
    new-instance v0, Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;

    invoke-direct {v0, p0}, Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;-><init>(Lus/zoom/androidlib/widget/ZMAlertHolder;)V

    iput-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mContentPadding:Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;

    .line 1138
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mContentPadding:Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;

    iput p1, v0, Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;->left:I

    .line 1139
    iput p2, v0, Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;->top:I

    .line 1140
    iput p3, v0, Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;->right:I

    .line 1141
    iput p4, v0, Lus/zoom/androidlib/widget/ZMAlertHolder$ContentPadding;->bottom:I

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 930
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->context:Landroid/content/Context;

    return-void
.end method

.method public setDialog(Lus/zoom/androidlib/widget/ZMAlertDialog;)V
    .locals 0

    .line 1007
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->dialog:Lus/zoom/androidlib/widget/ZMAlertDialog;

    return-void
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setEnableAutoClickBtnDismiss(Z)V
    .locals 0

    .line 1153
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mEnableAutoClickBtnDismiss:Z

    return-void
.end method

.method public setHideBottomGap(Z)V
    .locals 0

    .line 1068
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->isHideBottomGap:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 995
    iget-object v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 987
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;)V
    .locals 0

    .line 1048
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->items:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setListDividerHeight(I)V
    .locals 0

    .line 1133
    iput p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->listDividerHeight:I

    return-void
.end method

.method public setListListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->listListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 1

    .line 970
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->msg:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 972
    iput v0, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->type:I

    goto :goto_0

    .line 973
    :cond_0
    iget p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->type:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 974
    iput p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->type:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setMultiChoice(Z)V
    .locals 0

    .line 1060
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->isMultiChoice:Z

    return-void
.end method

.method public setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setNeutralButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setSingleChoice(Z)V
    .locals 0

    .line 1088
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->isSingleChoice:Z

    return-void
.end method

.method public setSmallTitleMutlilineStyle(Z)V
    .locals 0

    .line 946
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->smallTitleMutlilineStyle:Z

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 1117
    iput p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->theme:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 983
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleFontSize(F)V
    .locals 0

    .line 954
    iput p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->titleFontSize:F

    return-void
.end method

.method public setTitleTxtColor(I)V
    .locals 0

    .line 962
    iput p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->titleTxtColor:I

    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mTitleView:Landroid/view/View;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1019
    iput p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->type:I

    return-void
.end method

.method public setVerticalOptionStyle(Z)V
    .locals 0

    .line 938
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->verticalOptionStyle:Z

    return-void
.end method

.method public setmNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mNegativeButtonText:Ljava/lang/String;

    return-void
.end method

.method public setmNeutralButtonText(Ljava/lang/String;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mNeutralButtonText:Ljava/lang/String;

    return-void
.end method

.method public setmPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mPositiveButtonText:Ljava/lang/String;

    return-void
.end method

.method public setmView(Landroid/view/View;)V
    .locals 0

    .line 1100
    iput-object p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mView:Landroid/view/View;

    const/4 p1, 0x5

    .line 1101
    iput p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->type:I

    return-void
.end method

.method public setmViewSpacingSpecified(Z)V
    .locals 0

    .line 1109
    iput-boolean p1, p0, Lus/zoom/androidlib/widget/ZMAlertHolder;->mViewSpacingSpecified:Z

    return-void
.end method
