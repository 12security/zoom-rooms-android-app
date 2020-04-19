.class Lus/zoom/androidlib/widget/QuickSearchSideBar$1;
.super Landroid/widget/TextView;
.source "QuickSearchSideBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/widget/QuickSearchSideBar;->prebuildCharViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/widget/QuickSearchSideBar;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/widget/QuickSearchSideBar;Landroid/content/Context;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar$1;->this$0:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .line 112
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/QuickSearchSideBar$1;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 114
    iget-object v2, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar$1;->this$0:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-static {v2}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->access$000(Lus/zoom/androidlib/widget/QuickSearchSideBar;)Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lus/zoom/androidlib/widget/QuickSearchSideBar$IListener;->onQuickSearchCharReleased(C)V

    .line 115
    iget-object v0, p0, Lus/zoom/androidlib/widget/QuickSearchSideBar$1;->this$0:Lus/zoom/androidlib/widget/QuickSearchSideBar;

    invoke-static {v0, v1}, Lus/zoom/androidlib/widget/QuickSearchSideBar;->access$102(Lus/zoom/androidlib/widget/QuickSearchSideBar;C)C

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
