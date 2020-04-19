.class public Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;
.super Ljava/lang/Object;
.source "ZRCVerifyCertEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cert_item_:Lus/zoom/zrcsdk/model/ZRCCertItem;

.field private pending_requestid_:Ljava/lang/String;

.field private request_url_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lus/zoom/zrcsdk/model/ZRCCertItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->cert_item_:Lus/zoom/zrcsdk/model/ZRCCertItem;

    .line 13
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->pending_requestid_:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->request_url_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCert_item_()Lus/zoom/zrcsdk/model/ZRCCertItem;
    .locals 1

    .line 18
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->cert_item_:Lus/zoom/zrcsdk/model/ZRCCertItem;

    return-object v0
.end method

.method public getPending_requestid_()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->pending_requestid_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_url_()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->request_url_:Ljava/lang/String;

    return-object v0
.end method

.method public setCert_item_(Lus/zoom/zrcsdk/model/ZRCCertItem;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->cert_item_:Lus/zoom/zrcsdk/model/ZRCCertItem;

    return-void
.end method

.method public setPending_requestid_(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->pending_requestid_:Ljava/lang/String;

    return-void
.end method

.method public setRequest_url_(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->request_url_:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCVerifyCertEvent{cert_item_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->cert_item_:Lus/zoom/zrcsdk/model/ZRCCertItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pending_requestid_=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->pending_requestid_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", request_url_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCVerifyCertEvent;->request_url_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
