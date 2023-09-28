# classes2.dex

.class public final Landroid/net/vcn/persistablebundleutils/ChildSaProposalUtils;
.super Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;-><init>()V

    return-void
.end method

.method public static fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/ChildSaProposal;
    .registers 9

    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;-><init>()V

    const-string v1, "ENCRYPT_ALGO_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "Encryption algo bundle was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Landroid/net/vcn/persistablebundleutils/ChildSaProposalUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/ChildSaProposalUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;

    iget v5, v4, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->encryptionAlgo:I

    iget v6, v4, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase$EncryptionAlgoKeyLenPair;->keyLen:I

    invoke-virtual {v0, v5, v6}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addEncryptionAlgorithm(II)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    goto :goto_22

    :cond_36
    const-string v3, "INTEGRITY_ALGO_KEY"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const-string v4, "Integrity algo array was null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_44
    if-ge v6, v4, :cond_4e

    aget v7, v3, v6

    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addIntegrityAlgorithm(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_4e
    const-string v4, "DH_GROUP_KEY"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    const-string v6, "DH Group array was null"

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v6, v4

    :goto_5a
    if-ge v5, v6, :cond_64

    aget v7, v4, v5

    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->addDhGroup(I)Landroid/net/ipsec/ike/ChildSaProposal$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    :cond_64
    invoke-virtual {v0}, Landroid/net/ipsec/ike/ChildSaProposal$Builder;->build()Landroid/net/ipsec/ike/ChildSaProposal;

    move-result-object v5

    return-object v5
.end method

.method public static toPersistableBundle(Landroid/net/ipsec/ike/ChildSaProposal;)Landroid/os/PersistableBundle;
    .registers 2

    invoke-static {p0}, Landroid/net/vcn/persistablebundleutils/SaProposalUtilsBase;->toPersistableBundle(Landroid/net/ipsec/ike/SaProposal;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method
