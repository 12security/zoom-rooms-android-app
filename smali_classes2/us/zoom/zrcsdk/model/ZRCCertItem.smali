.class public Lus/zoom/zrcsdk/model/ZRCCertItem;
.super Ljava/lang/Object;
.source "ZRCCertItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ca_finger_print_:Ljava/lang/String;

.field private dns_name_:Ljava/lang/String;

.field private finger_print_:Ljava/lang/String;

.field private host_name_:Ljava/lang/String;

.field private issuer_:Ljava/lang/String;

.field private serial_number_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->serial_number_:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->finger_print_:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->ca_finger_print_:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->dns_name_:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->issuer_:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->host_name_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    check-cast p1, Lus/zoom/zrcsdk/model/ZRCCertItem;

    .line 87
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->serial_number_:Ljava/lang/String;

    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCCertItem;->serial_number_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 88
    :cond_2
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->finger_print_:Ljava/lang/String;

    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCCertItem;->finger_print_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 89
    :cond_3
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->ca_finger_print_:Ljava/lang/String;

    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCCertItem;->ca_finger_print_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 90
    :cond_4
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->dns_name_:Ljava/lang/String;

    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCCertItem;->dns_name_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 91
    :cond_5
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->issuer_:Ljava/lang/String;

    iget-object v2, p1, Lus/zoom/zrcsdk/model/ZRCCertItem;->issuer_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 92
    :cond_6
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->host_name_:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/zrcsdk/model/ZRCCertItem;->host_name_:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public getCa_finger_print_()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->ca_finger_print_:Ljava/lang/String;

    return-object v0
.end method

.method public getDns_name_()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->dns_name_:Ljava/lang/String;

    return-object v0
.end method

.method public getFinger_print_()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->finger_print_:Ljava/lang/String;

    return-object v0
.end method

.method public getHost_name_()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->host_name_:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuer_()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->issuer_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial_number_()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->serial_number_:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 97
    iget-object v0, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->serial_number_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->finger_print_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->ca_finger_print_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->dns_name_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->issuer_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->host_name_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setCa_finger_print_(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->ca_finger_print_:Ljava/lang/String;

    return-void
.end method

.method public setDns_name_(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->dns_name_:Ljava/lang/String;

    return-void
.end method

.method public setFinger_print_(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->finger_print_:Ljava/lang/String;

    return-void
.end method

.method public setHost_name_(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->host_name_:Ljava/lang/String;

    return-void
.end method

.method public setIssuer_(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->issuer_:Ljava/lang/String;

    return-void
.end method

.method public setSerial_number_(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->serial_number_:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZRCCertItem{serial_number_=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->serial_number_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", finger_print_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->finger_print_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ca_finger_print_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->ca_finger_print_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dns_name_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->dns_name_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", issuer_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->issuer_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", host_name_=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lus/zoom/zrcsdk/model/ZRCCertItem;->host_name_:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
