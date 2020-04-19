.class Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$1;
.super Ljava/lang/Object;
.source "LoginCalendarPickerAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;->sortDisplayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;Ljava/text/Collator;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$1;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;

    iput-object p2, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 81
    check-cast p1, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    check-cast p2, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;

    invoke-virtual {p0, p1, p2}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$1;->compare(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;)I

    move-result p1

    return p1
.end method

.method public compare(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;)I
    .locals 1

    .line 84
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$1;->val$collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ListItemWrapper;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
