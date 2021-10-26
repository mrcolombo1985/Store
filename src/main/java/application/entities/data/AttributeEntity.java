package application.entities.data;

import application.entities.AbstractEntity;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;
import lombok.extern.slf4j.Slf4j;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@SuppressWarnings("ALL")
@Entity
@Table(name = "attribute")
@ToString
@EqualsAndHashCode
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Slf4j
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class AttributeEntity extends AbstractEntity {

    @Column(name = "name")
    private String Name;

    @Column(name = "description")
    private String description;

    @Column(name = "displayOnFront")
    private Boolean displayOnFront;

    @Column(name = "inCompare")
    private Boolean inCompare;

    @Column(name = "inFilter")
    private Boolean inFilter;
}
