# classes3.dex

.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto$Denylists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$900()Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDenylists(Ljava/lang/Iterable;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;)",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1600(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 4

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1500(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V

    return-object p0
.end method

.method public addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 4

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1300(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method

.method public addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 3

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1400(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V

    return-object p0
.end method

.method public addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 3

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1200(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method

.method public clearDenylists()Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 2

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1700(Landroid/updatabledriver/UpdatableDriverProto$Denylists;)V

    return-object p0
.end method

.method public getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .registers 3

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    move-result-object v0

    return-object v0
.end method

.method public getDenylistsCount()I
    .registers 2

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylistsCount()I

    move-result v0

    return v0
.end method

.method public getDenylistsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylistsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 3

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1800(Landroid/updatabledriver/UpdatableDriverProto$Denylists;I)V

    return-object p0
.end method

.method public setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 4

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1100(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)V

    return-object p0
.end method

.method public setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .registers 4

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1000(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method
