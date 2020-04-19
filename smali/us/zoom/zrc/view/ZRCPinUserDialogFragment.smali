.class public Lus/zoom/zrc/view/ZRCPinUserDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ZRCPinUserDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lus/zoom/zrc/view/model/IShouldDismissWhenBindParticipantInSilent;


# instance fields
.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

.field private quantityOfScreens:I

.field private userId:I

.field private userName:Ljava/lang/String;

.field private viewBlankLeft:Landroid/view/View;

.field private viewBlankRight:Landroid/view/View;

.field private viewZrcFirstIcon:Landroid/widget/ImageView;

.field private viewZrcFirstLabel:Landroid/widget/TextView;

.field private viewZrcFirstTitle:Landroid/widget/TextView;

.field private viewZrcLastIcon:Landroid/widget/ImageView;

.field private viewZrcLastLabel:Landroid/widget/TextView;

.field private viewZrcLastTitle:Landroid/widget/TextView;

.field private viewZrcPinUserContentLayout:Landroid/view/View;

.field private viewZrcPinUserFirstLayout:Landroid/view/View;

.field private viewZrcPinUserLastLayout:Landroid/view/View;

.field private viewZrcPinUserLayout:Landroid/view/View;

.field private viewZrcPinUserSecondLayout:Landroid/view/View;

.field private viewZrcSecondIcon:Landroid/widget/ImageView;

.field private viewZrcSecondLabel:Landroid/widget/TextView;

.field private viewZrcSecondTitle:Landroid/widget/TextView;

.field private viewZrcTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    .line 69
    new-instance v0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment$1;-><init>(Lus/zoom/zrc/view/ZRCPinUserDialogFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/view/ZRCPinUserDialogFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->updatePinScreen()V

    return-void
.end method

.method private getPinnedUserByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;
    .locals 3

    .line 273
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getParticipantList()Lus/zoom/zrc/model/ZRCParticipantList;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/zoom/zrcsdk/model/ZRCParticipant;

    .line 275
    invoke-virtual {v1}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserId()I

    move-result v2

    invoke-static {p1, v2}, Lus/zoom/zrcsdk/util/Util;->areTwoUserIdsEqual(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private setScreen(I)V
    .locals 8

    .line 162
    sget v0, Lus/zoom/zrcbox/R$string;->pin_instruction_with_name:I

    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->userName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->userName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->userName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 168
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 169
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/AppModel;->getPinUserManager()Lus/zoom/zrc/model/ZRCPinUserManager;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lus/zoom/zrc/model/ZRCPinUserManager;->getZrPinStatusOfScreens()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    return-void

    .line 174
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 185
    :pswitch_0
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcLastTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcLastIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLastLayout:Landroid/view/View;

    iget-object v7, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcLastLabel:Landroid/widget/TextView;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->setUserPinView(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_1

    .line 181
    :pswitch_1
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcSecondTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcSecondIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserSecondLayout:Landroid/view/View;

    iget-object v7, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcSecondLabel:Landroid/widget/TextView;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->setUserPinView(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_1

    .line 177
    :pswitch_2
    iget-object v4, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcFirstTitle:Landroid/widget/TextView;

    iget-object v5, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcFirstIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserFirstLayout:Landroid/view/View;

    iget-object v7, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcFirstLabel:Landroid/widget/TextView;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->setUserPinView(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setUserPinView(Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 5

    .line 195
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanBePinned()Z

    move-result v0

    const-string v1, ""

    .line 197
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 198
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getPinnedUserByUserId(I)Lus/zoom/zrcsdk/model/ZRCParticipant;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/ZRCParticipant;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result v2

    iget v4, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->userId:I

    if-ne v2, v4, :cond_1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result v2

    if-eq v2, v3, :cond_1

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-nez v0, :cond_2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    sget p2, Lus/zoom/zrcbox/R$drawable;->pin_indicator_3_disabled:I

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p2, "3"

    .line 219
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :pswitch_1
    sget p2, Lus/zoom/zrcbox/R$drawable;->pin_indicator_2_disabled:I

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p2, "2"

    .line 215
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    :pswitch_2
    sget p2, Lus/zoom/zrcbox/R$drawable;->pin_indicator_1_disabled:I

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p2, "1"

    .line 211
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 231
    :pswitch_3
    sget p2, Lus/zoom/zrcbox/R$drawable;->pin_indicator3:I

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 228
    :pswitch_4
    sget p2, Lus/zoom/zrcbox/R$drawable;->pin_indicator2:I

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 225
    :pswitch_5
    sget p2, Lus/zoom/zrcbox/R$drawable;->pin_indicator1:I

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    :goto_0
    invoke-virtual {p5, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_3

    .line 236
    sget p2, Lus/zoom/zrcbox/R$drawable;->zrc_pin_user_enable_bg:I

    goto :goto_1

    :cond_3
    sget p2, Lus/zoom/zrcbox/R$drawable;->zrc_pin_user_disable_bg:I

    :goto_1
    invoke-virtual {p5, p2}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v0, :cond_4

    const-string p2, "#232333"

    goto :goto_2

    :cond_4
    const-string p2, "#6C6C7F"

    .line 238
    :goto_2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v0, :cond_5

    const-string p2, "#232333"

    goto :goto_3

    :cond_5
    const-string p2, "#6C6C7F"

    .line 239
    :goto_3
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p2, ""

    .line 242
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanBePinned()Z

    move-result p4

    if-nez p4, :cond_6

    .line 243
    sget p2, Lus/zoom/zrcbox/R$string;->pin_status_can_not_pin:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 244
    :cond_6
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedUserId()I

    move-result p4

    if-eq p4, v3, :cond_7

    .line 245
    sget p2, Lus/zoom/zrcbox/R$string;->pin_status_pinned:I

    invoke-virtual {p0, p2}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 247
    :cond_7
    :goto_4
    invoke-virtual {p6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->isCanBePinned()Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, ""

    .line 251
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getScreenLayout()I

    move-result p1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_8

    packed-switch p1, :pswitch_data_2

    goto :goto_5

    .line 262
    :pswitch_6
    sget p1, Lus/zoom/zrcbox/R$string;->can_not_pin_reason_local_view:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    .line 259
    :pswitch_7
    sget p1, Lus/zoom/zrcbox/R$string;->can_not_pin_reason_background:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    .line 253
    :pswitch_8
    sget p1, Lus/zoom/zrcbox/R$string;->can_not_pin_reason_content:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    .line 256
    :cond_8
    sget p1, Lus/zoom/zrcbox/R$string;->can_not_pin_reason_spotlight:I

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 265
    :goto_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 266
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private setViewLayoutParams()V
    .locals 14

    .line 285
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41100000    # 9.0f

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    const v6, 0x3f666666    # 0.9f

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v6

    .line 287
    iget-object v7, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->context:Landroid/content/Context;

    invoke-static {v7}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    .line 288
    iget v7, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->quantityOfScreens:I

    if-ne v7, v1, :cond_0

    const v7, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    const v7, 0x3f666666    # 0.9f

    :goto_0
    mul-float v7, v7, v0

    .line 289
    iget v8, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->quantityOfScreens:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v7, v7, v3

    div-float/2addr v7, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v7, v2

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v7, v7, v2

    goto :goto_1

    .line 293
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float v7, v0, v6

    .line 294
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v6

    .line 295
    iget-object v8, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcTitle:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    .line 296
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lus/zoom/zrcbox/R$string;->pin_instruction_with_name:I

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const-string v13, ""

    aput-object v13, v12, v5

    invoke-virtual {v9, v10, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 297
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 298
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v8, v9, v5, v12, v10}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 299
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v7, v8

    mul-float v8, v8, v4

    const/high16 v9, 0x42480000    # 50.0f

    .line 300
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {v11, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    sub-float/2addr v8, v9

    mul-float v8, v8, v3

    div-float/2addr v8, v2

    float-to-int v2, v8

    .line 302
    iget-object v3, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserContentLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 303
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 305
    :goto_1
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    float-to-int v0, v0

    float-to-int v3, v7

    invoke-virtual {v2, v0, v3}, Landroid/view/Window;->setLayout(II)V

    .line 306
    iget v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->quantityOfScreens:I

    if-ne v0, v1, :cond_3

    .line 307
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewBlankLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 308
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewBlankLeft:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewBlankRight:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewBlankRight:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v3, v5, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 312
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLayout:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v3, v1, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLastLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 316
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLastLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 319
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewBlankLeft:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 320
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewBlankLeft:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v7, 0x3d4ccccd    # 0.05f

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewBlankRight:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 322
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewBlankRight:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v3, v4, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 324
    iget-object v2, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLayout:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v3, v1, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLastLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updatePinScreen()V
    .locals 2

    const/4 v0, 0x0

    .line 156
    :goto_0
    iget v1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->quantityOfScreens:I

    if-ge v0, v1, :cond_0

    .line 157
    invoke-direct {p0, v0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->setScreen(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBindUserId()I
    .locals 1

    .line 85
    iget v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->userId:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 343
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 91
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->context:Landroid/content/Context;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, v0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->setStyle(II)V

    .line 93
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrc/model/AppModel;->getQuantityOfScreens()I

    move-result p1

    iput p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->quantityOfScreens:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 348
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->dismiss()V

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 350
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_screen_1_pin_layout:I

    if-ne p1, v0, :cond_0

    .line 351
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->userId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrcsdk/ConfApp;->pinUser(II)I

    goto :goto_0

    .line 353
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_screen_2_pin_layout:I

    if-ne p1, v0, :cond_1

    .line 354
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->userId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrcsdk/ConfApp;->pinUser(II)I

    goto :goto_0

    .line 356
    :cond_1
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_screen_3_pin_layout:I

    if-ne p1, v0, :cond_2

    .line 357
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->userId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lus/zoom/zrcsdk/ConfApp;->pinUser(II)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "user_id"

    const/4 v1, -0x1

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->userId:I

    const-string v0, "user_name"

    const-string v1, ""

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->userName:Ljava/lang/String;

    .line 102
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/model/AppEngine;->addZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 114
    iget-object p3, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    if-nez p3, :cond_1

    .line 115
    sget p3, Lus/zoom/zrcbox/R$layout;->zrc_pin_user_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    .line 116
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcTitle:Landroid/widget/TextView;

    .line 117
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->blank_left:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewBlankLeft:Landroid/view/View;

    .line 118
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->blank_right:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewBlankRight:Landroid/view/View;

    .line 119
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_pin_user_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLayout:Landroid/view/View;

    .line 120
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->pin_user_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserContentLayout:Landroid/view/View;

    .line 121
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_1_pin_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserFirstLayout:Landroid/view/View;

    .line 122
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_2_pin_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserSecondLayout:Landroid/view/View;

    .line 123
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_3_pin_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLastLayout:Landroid/view/View;

    .line 124
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_1_pin_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcFirstIcon:Landroid/widget/ImageView;

    .line 125
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_2_pin_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcSecondIcon:Landroid/widget/ImageView;

    .line 126
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_3_pin_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcLastIcon:Landroid/widget/ImageView;

    .line 127
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_1_pin_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcFirstLabel:Landroid/widget/TextView;

    .line 128
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_2_pin_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcSecondLabel:Landroid/widget/TextView;

    .line 129
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_3_pin_txt:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcLastLabel:Landroid/widget/TextView;

    .line 130
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_1_pin_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcFirstTitle:Landroid/widget/TextView;

    .line 131
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_2_pin_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcSecondTitle:Landroid/widget/TextView;

    .line 132
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->zrc_screen_3_pin_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcLastTitle:Landroid/widget/TextView;

    .line 133
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    sget p2, Lus/zoom/zrcbox/R$id;->ic_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 135
    new-instance p2, Lus/zoom/zrc/view/ZRCPinUserDialogFragment$2;

    invoke-direct {p2, p0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment$2;-><init>(Lus/zoom/zrc/view/ZRCPinUserDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserFirstLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserSecondLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->viewZrcPinUserLastLayout:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewManager;

    if-eqz p1, :cond_2

    .line 148
    iget-object p2, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    invoke-interface {p1, p2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 150
    :cond_2
    :goto_0
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->setViewLayoutParams()V

    .line 151
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->updatePinScreen()V

    .line 152
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 107
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 108
    invoke-static {}, Lus/zoom/zrc/model/AppEngine;->getInstance()Lus/zoom/zrc/model/AppEngine;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->listener:Lus/zoom/zrc/simpleListener/SimpleIZRMeetingEventListener;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/model/AppEngine;->removeZRMeetingEventListener(Lus/zoom/zrc/model/AppEngine$IZRMeetingEvent;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 331
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 332
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrcsdk/ConfApp;->setPinUserInstructionVisible(Z)I

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 337
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 338
    invoke-direct {p0}, Lus/zoom/zrc/view/ZRCPinUserDialogFragment;->setViewLayoutParams()V

    return-void
.end method
