.class Lus/zoom/zrc/view/DialKeyboardView$3;
.super Ljava/lang/Object;
.source "DialKeyboardView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/DialKeyboardView;->showCountryCodecPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/DialKeyboardView;

.field final synthetic val$adapter:Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;

.field final synthetic val$w:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/DialKeyboardView;Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    iput-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->val$adapter:Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;

    iput-object p3, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->val$w:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 514
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->val$adapter:Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/view/adapter/PstnCallCountryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lus/zoom/zrcsdk/model/CountryCode;

    .line 515
    iget-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p2}, Lus/zoom/zrc/view/DialKeyboardView;->access$400(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrcsdk/model/CountryCode;

    move-result-object p2

    .line 516
    iget-object p3, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p3, p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$402(Lus/zoom/zrc/view/DialKeyboardView;Lus/zoom/zrcsdk/model/CountryCode;)Lus/zoom/zrcsdk/model/CountryCode;

    .line 517
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$500(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p4}, Lus/zoom/zrc/view/DialKeyboardView;->access$400(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrcsdk/model/CountryCode;

    move-result-object p4

    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "drawable"

    iget-object p5, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    .line 518
    invoke-static {p5}, Lus/zoom/zrc/view/DialKeyboardView;->access$500(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    .line 517
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 520
    iget-object p3, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p3}, Lus/zoom/zrc/view/DialKeyboardView;->access$500(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 521
    iget-object p3, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p3}, Lus/zoom/zrc/view/DialKeyboardView;->access$600(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$400(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrcsdk/model/CountryCode;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 524
    iget-object p3, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p3}, Lus/zoom/zrc/view/DialKeyboardView;->access$500(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p4}, Lus/zoom/zrc/view/DialKeyboardView;->access$600(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/ImageView;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lus/zoom/zrc/utils/ZRCUIUtils;->setEmptyCountryCodeFlagDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/CharSequence;)V

    .line 527
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$600(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p3, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p3}, Lus/zoom/zrc/view/DialKeyboardView;->access$400(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrcsdk/model/CountryCode;

    move-result-object p3

    const/4 p4, 0x2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    .line 528
    invoke-static {p3}, Lus/zoom/zrc/view/DialKeyboardView;->access$500(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/content/Context;

    move-result-object p3

    sget p5, Lus/zoom/zrcbox/R$string;->country_code_in_dial_view_des:I

    new-array v0, p4, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    .line 529
    invoke-static {v2}, Lus/zoom/zrc/view/DialKeyboardView;->access$400(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrcsdk/model/CountryCode;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/CountryCode;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    .line 530
    invoke-static {v2}, Lus/zoom/zrc/view/DialKeyboardView;->access$400(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrcsdk/model/CountryCode;

    move-result-object v2

    invoke-virtual {v2}, Lus/zoom/zrcsdk/model/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 528
    invoke-virtual {p3, p5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 527
    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 534
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$300(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 535
    iget-object p3, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p3}, Lus/zoom/zrc/view/DialKeyboardView;->access$400(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrcsdk/model/CountryCode;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/CountryCode;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lus/zoom/zrc/phonecall/PhoneCallNumberUtils;->getAsYourTypeFormattedPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 536
    iget-object p3, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p3}, Lus/zoom/zrc/view/DialKeyboardView;->access$300(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 538
    sget-object p3, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_FROM_COUNTRY:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    .line 539
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/CountryCode;->getName()Ljava/lang/String;

    move-result-object p2

    .line 538
    invoke-virtual {p1, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sget-object p2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ZOOM_LOG_ATT_TO_COUNTRY:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;

    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomLogTagName;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    .line 541
    invoke-static {p3}, Lus/zoom/zrc/view/DialKeyboardView;->access$400(Lus/zoom/zrc/view/DialKeyboardView;)Lus/zoom/zrcsdk/model/CountryCode;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrcsdk/model/CountryCode;->getName()Ljava/lang/String;

    move-result-object p3

    .line 540
    invoke-virtual {p1, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrc/model/Model;->getMeetingStatus()I

    move-result p2

    if-ne p2, p4, :cond_2

    sget-object p2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_IN_MEETING:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 543
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p2

    goto :goto_2

    :cond_2
    sget-object p2, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->ZR_LOG_LOC_CALL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;

    .line 544
    invoke-virtual {p2}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogLocation;->getZoomRoomsLogLocation()I

    move-result p2

    .line 545
    :goto_2
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p3

    invoke-virtual {p3}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p3

    sget-object p4, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->ZR_LOG_EVENT_PSTN_CALL:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;

    .line 546
    invoke-virtual {p4}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogEvent;->getZoomRoomsLogEvent()I

    move-result p4

    sget-object p5, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->ZR_LOG_SUBEVENT_CHANGE_COUNTRY:Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;

    .line 547
    invoke-virtual {p5}, Lus/zoom/zrcsdk/model/ZRCUsageTrackingEventType$ZoomRoomsLogSubevent;->getZoomRoomsLogSubevent()I

    move-result p5

    .line 548
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 545
    invoke-virtual {p3, p2, p4, p5, p1}, Lus/zoom/zrcsdk/PTApp;->sendUsageTrackWithLogType(IIILjava/lang/String;)I

    .line 550
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->val$w:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 551
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/DialKeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 552
    iget-object p1, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p1}, Lus/zoom/zrc/view/DialKeyboardView;->access$600(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lus/zoom/zrc/view/DialKeyboardView$3;->this$0:Lus/zoom/zrc/view/DialKeyboardView;

    invoke-static {p2}, Lus/zoom/zrc/view/DialKeyboardView;->access$600(Lus/zoom/zrc/view/DialKeyboardView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
